.class final Lcom/google/android/gms/internal/play_billing/zzdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdp;


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/play_billing/zzct;

.field private final zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

.field private final zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

.field private final zzo:I

.field private final zzp:Lcom/google/android/gms/internal/play_billing/zzdk;

.field private final zzq:Lcom/google/android/gms/internal/play_billing/zzda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzdf;IZ[IIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzc(Lcom/google/android/gms/internal/play_billing/zzdf;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzi:[I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzj:I

    iput p10, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzk:I

    iput-object p11, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp:Lcom/google/android/gms/internal/play_billing/zzdk;

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl:Lcom/google/android/gms/internal/play_billing/zzct;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    iput-object p14, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

    iput-object p15, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzq:Lcom/google/android/gms/internal/play_billing/zzda;

    return-void
.end method

.method private final zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzce;

    return-object p1
.end method

.method private final zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zza()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzC(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzD(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzE(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static zzG(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget p3, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzI(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v0, v0, p3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget p3, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzJ(Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzK(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzM(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzN(Lcom/google/android/gms/internal/play_billing/zzey;ILjava/lang/Object;I)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzP(Ljava/lang/Object;I)Z
    .locals 9

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v7

    :cond_0
    return v6

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v7

    :cond_1
    return v6

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v7

    :cond_2
    return v6

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v7

    :cond_3
    return v6

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v7

    :cond_4
    return v6

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v7

    :cond_5
    return v6

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v7

    :cond_6
    return v6

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v7

    :cond_7
    return v6

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v7

    :cond_8
    return v6

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v7

    :cond_9
    return v6

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v7

    :cond_b
    return v6

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v7

    :cond_d
    return v6

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v7

    :cond_e
    return v6

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v7

    :cond_f
    return v6

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v7

    :cond_10
    return v6

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v7

    :cond_11
    return v6

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v7

    :cond_12
    return v6

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_13

    return v7

    :cond_13
    return v6

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v7, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v7

    :cond_15
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzQ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzdp;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzS(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcb;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzt()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzT(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzU(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzey;->zzF(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcb;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcb;->zzc:Lcom/google/android/gms/internal/play_billing/zzeh;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzc()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzf()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcb;->zzc:Lcom/google/android/gms/internal/play_billing/zzeh;

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;
    .locals 31

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzdo;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzdi;->zza:[I

    move-object/from16 v17, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v14, v10

    move v4, v15

    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zze()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v22, v18

    move/from16 v23, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_34

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_c

    :cond_15
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    move/from16 v3, v24

    :goto_d
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_e

    :cond_17
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_f

    :cond_18
    move/from16 v8, v24

    :goto_f
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v20, 0x1

    aput v21, v17, v20

    move/from16 v20, v6

    :cond_19
    and-int/lit16 v6, v3, 0xff

    const/16 v5, 0x33

    if-lt v6, v5, :cond_22

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v8, v2, :cond_1b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v29, 0xd

    :goto_10
    add-int/lit8 v30, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_1a

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v29

    or-int/2addr v8, v2

    add-int/lit8 v29, v29, 0xd

    move/from16 v5, v30

    const v2, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v2, v5, v29

    or-int/2addr v8, v2

    move/from16 v5, v30

    :cond_1b
    add-int/lit8 v2, v6, -0x33

    move/from16 v29, v5

    const/16 v5, 0x9

    if-eq v2, v5, :cond_1e

    const/16 v5, 0x11

    if-ne v2, v5, :cond_1c

    goto :goto_12

    :cond_1c
    const/16 v5, 0xc

    if-ne v2, v5, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzc()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1d

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_1f

    :cond_1d
    div-int/lit8 v2, v21, 0x3

    add-int/2addr v2, v2

    add-int/2addr v2, v5

    add-int/lit8 v5, v16, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v2

    :goto_11
    move/from16 v16, v5

    goto :goto_13

    :cond_1e
    :goto_12
    div-int/lit8 v2, v21, 0x3

    add-int/2addr v2, v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v5, v16, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v2

    goto :goto_11

    :cond_1f
    :goto_13
    add-int/2addr v8, v8

    aget-object v2, v10, v8

    instance-of v5, v2, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_20

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_14
    move v5, v13

    move/from16 v30, v14

    goto :goto_15

    :cond_20
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v8

    goto :goto_14

    :goto_15
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    add-int/lit8 v8, v8, 0x1

    aget-object v13, v10, v8

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v10, v8

    :goto_16
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move-object/from16 v28, v1

    move/from16 v27, v5

    move/from16 v13, v16

    move/from16 v25, v29

    move/from16 v16, v8

    const/4 v8, 0x0

    goto/16 :goto_22

    :cond_22
    move/from16 v26, v2

    move v5, v13

    move/from16 v30, v14

    add-int/lit8 v2, v16, 0x1

    aget-object v13, v10, v16

    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_23

    const/16 v14, 0x11

    if-ne v6, v14, :cond_24

    :cond_23
    move/from16 v27, v5

    const/4 v5, 0x1

    goto/16 :goto_1b

    :cond_24
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_25

    const/16 v14, 0x31

    if-ne v6, v14, :cond_26

    :cond_25
    move/from16 v27, v5

    const/4 v5, 0x1

    goto :goto_1a

    :cond_26
    const/16 v14, 0xc

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_27

    goto :goto_18

    :cond_27
    const/16 v14, 0x32

    if-ne v6, v14, :cond_29

    add-int/lit8 v14, v22, 0x1

    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    add-int/lit8 v27, v16, 0x2

    aget-object v2, v10, v2

    add-int v22, v22, v22

    aput-object v2, v12, v22

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v2, v16, 0x3

    aget-object v16, v10, v27

    aput-object v16, v12, v22

    move/from16 v27, v5

    move/from16 v22, v14

    :goto_17
    const/4 v5, 0x1

    goto :goto_1c

    :cond_28
    move/from16 v22, v14

    move/from16 v2, v27

    :cond_29
    move/from16 v27, v5

    goto :goto_17

    :cond_2a
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzc()I

    move-result v14

    move/from16 v27, v5

    const/4 v5, 0x1

    if-eq v14, v5, :cond_2b

    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_2c

    :cond_2b
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    add-int/lit8 v16, v16, 0x2

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    :goto_19
    move/from16 v2, v16

    goto :goto_1c

    :goto_1a
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    add-int/lit8 v16, v16, 0x2

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    goto :goto_19

    :goto_1b
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v14

    :cond_2c
    :goto_1c
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    and-int/lit16 v13, v3, 0x1000

    const v16, 0xfffff

    if-eqz v13, :cond_30

    const/16 v13, 0x11

    if-gt v6, v13, :cond_30

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v5, 0xd800

    if-lt v8, v5, :cond_2e

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_1d
    add-int/lit8 v25, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_2d

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v16

    or-int/2addr v8, v13

    add-int/lit8 v16, v16, 0xd

    move/from16 v13, v25

    goto :goto_1d

    :cond_2d
    shl-int v13, v13, v16

    or-int/2addr v8, v13

    goto :goto_1e

    :cond_2e
    move/from16 v25, v13

    :goto_1e
    add-int v13, v7, v7

    div-int/lit8 v16, v8, 0x20

    add-int v13, v13, v16

    aget-object v5, v10, v13

    move-object/from16 v28, v1

    instance-of v1, v5, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2f

    check-cast v5, Ljava/lang/reflect/Field;

    :goto_1f
    move v13, v2

    goto :goto_20

    :cond_2f
    check-cast v5, Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v10, v13

    goto :goto_1f

    :goto_20
    invoke-virtual {v9, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v2, v1

    rem-int/lit8 v8, v8, 0x20

    move/from16 v16, v2

    goto :goto_21

    :cond_30
    move-object/from16 v28, v1

    move v13, v2

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v6, v1, :cond_31

    const/16 v1, 0x31

    if-gt v6, v1, :cond_31

    add-int/lit8 v1, v23, 0x1

    aput v14, v17, v23

    move/from16 v23, v1

    :cond_31
    move v2, v14

    :goto_22
    add-int/lit8 v1, v21, 0x1

    aput v4, v11, v21

    add-int/lit8 v4, v21, 0x2

    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_32

    const/high16 v5, 0x20000000

    goto :goto_23

    :cond_32
    const/4 v5, 0x0

    :goto_23
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_33

    const/high16 v3, 0x10000000

    goto :goto_24

    :cond_33
    const/4 v3, 0x0

    :goto_24
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v11, v1

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v8, 0x14

    or-int v1, v1, v16

    aput v1, v11, v4

    move/from16 v16, v13

    move/from16 v4, v25

    move/from16 v2, v26

    move/from16 v13, v27

    move-object/from16 v1, v28

    move/from16 v14, v30

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_b

    :cond_34
    move/from16 v27, v13

    move/from16 v30, v14

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v27

    move/from16 v13, v30

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/play_billing/zzdi;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzdf;IZ[IIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)V

    return-object v1

    :cond_35
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method private static zzm(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzn(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzo(Ljava/lang/Object;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const v4, 0xfffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v9, v9

    if-ge v5, v9, :cond_6

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v10, v5

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_1

    add-int/lit8 v13, v5, 0x2

    aget v10, v10, v13

    and-int v13, v10, v4

    ushr-int/lit8 v10, v10, 0x14

    if-eq v13, v7, :cond_0

    int-to-long v7, v13

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v13

    :cond_0
    shl-int v10, v14, v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/2addr v9, v4

    int-to-long v3, v9

    const/16 v9, 0x3f

    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    :goto_2
    add-int/2addr v6, v3

    :cond_2
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_14

    :pswitch_1
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v11, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_4
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_5
    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_6
    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v3

    :goto_8
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_4

    :pswitch_6
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_8

    :pswitch_7
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_9
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/play_billing/zzbi;->$r8$clinit:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/2addr v3, v9

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v4, :cond_3

    goto :goto_9

    :cond_3
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v3

    goto :goto_8

    :pswitch_a
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_6

    :pswitch_c
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    :pswitch_d
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_7

    :pswitch_e
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_a
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_a

    :pswitch_10
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_6

    :pswitch_11
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzs(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    :goto_b
    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    add-int/2addr v4, v9

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzq(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzd(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzv(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v4, Lcom/google/android/gms/internal/play_billing/zzdr;->$r8$clinit:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_b

    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzk(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto/16 :goto_b

    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzx(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto/16 :goto_b

    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzm(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto/16 :goto_b

    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto/16 :goto_b

    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    goto/16 :goto_b

    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_23
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_24
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_25
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_26
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzc(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_27
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzb(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzt(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zza(ILjava/util/List;Z)I

    move-result v3

    :goto_c
    add-int/2addr v6, v3

    goto/16 :goto_14

    :pswitch_2c
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_c

    :pswitch_2d
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto :goto_c

    :pswitch_2e
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzj(ILjava/util/List;Z)I

    move-result v3

    goto :goto_c

    :pswitch_2f
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_c

    :pswitch_30
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzl(ILjava/util/List;Z)I

    move-result v3

    goto :goto_c

    :pswitch_31
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto :goto_c

    :pswitch_32
    const/4 v12, 0x0

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v13, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    xor-long/2addr v3, v13

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_14

    :pswitch_33
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_d
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto/16 :goto_14

    :pswitch_34
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    :goto_e
    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_c

    :pswitch_35
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    :goto_f
    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_c

    :pswitch_36
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    :goto_10
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v3

    :goto_11
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_d

    :pswitch_37
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_11

    :pswitch_38
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_12
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/play_billing/zzbi;->$r8$clinit:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/2addr v3, v9

    goto/16 :goto_c

    :pswitch_39
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_c

    :pswitch_3a
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v4, :cond_4

    goto :goto_12

    :cond_4
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v3

    goto :goto_11

    :pswitch_3b
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_c

    :pswitch_3c
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    goto/16 :goto_f

    :pswitch_3d
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    goto/16 :goto_e

    :pswitch_3e
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    goto/16 :goto_10

    :pswitch_3f
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    :goto_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_d

    :pswitch_40
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    goto :goto_13

    :pswitch_41
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    goto/16 :goto_f

    :pswitch_42
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    goto/16 :goto_e

    :cond_5
    :goto_14
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzeg;->zza(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v2, :cond_7

    return v6

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 v1, 0x0

    goto :goto_16

    :goto_15
    throw v1

    :goto_16
    goto :goto_15

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_2d
        :pswitch_2c
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzp(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/play_billing/zzcz;->zze()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcz;->zza()Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb()Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p5

    invoke-static {p5, p4}, Lcom/google/android/gms/internal/play_billing/zzda;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-static {p3}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzM(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_1
    move v2, v3

    goto/16 :goto_6

    :pswitch_4
    if-ne v3, v15, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zza([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-object v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v3, v15, :cond_6

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzM(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_6
    if-ne v3, v15, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_4

    add-int v5, v2, v3

    invoke-static {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzev;->zze([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    :goto_3
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_7
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-eqz v5, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_9
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_a
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_6
    :goto_5
    move v2, v5

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    move-object/from16 v7, p14

    const/4 v12, 0x1

    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-interface {v14}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_0

    const/16 v15, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v15, v15

    :goto_0
    invoke-interface {v14, v15}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v14

    invoke-virtual {v13, v1, v10, v11, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v13, 0x0

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_1d

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzc(Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    :goto_1
    iget-object v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_3

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v9, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzc(Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_2
    return v4

    :pswitch_0
    if-ne v6, v11, :cond_6

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_5

    if-ne v1, v2, :cond_4

    goto/16 :goto_12

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_5
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    throw v13

    :cond_6
    if-eqz v6, :cond_7

    goto/16 :goto_11

    :cond_7
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    throw v13

    :pswitch_1
    if-ne v6, v11, :cond_a

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_9

    if-ne v1, v2, :cond_8

    goto/16 :goto_12

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_9
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget v1, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    throw v13

    :cond_a
    if-eqz v6, :cond_b

    goto/16 :goto_11

    :cond_b
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget v1, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    throw v13

    :pswitch_2
    if-ne v6, v11, :cond_c

    invoke-static {v3, v4, v14, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzf([BILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    goto :goto_3

    :cond_c
    if-nez v6, :cond_1d

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v14

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzl(I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    :goto_3
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    sget v5, Lcom/google/android/gms/internal/play_billing/zzdr;->$r8$clinit:I

    if-eqz v3, :cond_12

    instance-of v5, v14, Ljava/util/RandomAccess;

    if-eqz v5, :cond_10

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v5, :cond_f

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v3, v10}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eq v6, v7, :cond_d

    invoke-interface {v14, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/2addr v7, v12

    goto :goto_5

    :cond_e
    invoke-static {v1, v8, v10, v13, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzA(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzeg;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    :goto_5
    add-int/2addr v6, v12

    goto :goto_4

    :cond_f
    if-eq v7, v5, :cond_12

    invoke-interface {v14, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v2

    :cond_10
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v1, v8, v6, v13, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzA(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzeg;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_12
    move v1, v2

    goto/16 :goto_12

    :pswitch_3
    if-ne v6, v11, :cond_1d

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v4, :cond_19

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_18

    if-nez v4, :cond_13

    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_17

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_14

    goto :goto_9

    :cond_14
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v4, :cond_16

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_15

    if-nez v4, :cond_13

    goto :goto_7

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_17
    :goto_9
    return v1

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :pswitch_4
    if-ne v6, v11, :cond_1d

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v14

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/play_billing/zzao;->zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v11, :cond_1d

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-wide/16 v10, 0x0

    const-string v1, ""

    cmp-long v6, v8, v10

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    if-nez v6, :cond_1f

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_1e

    if-nez v6, :cond_1a

    :goto_a
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_b
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_c
    if-ge v4, v5, :cond_1d

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ne v2, v8, :cond_1d

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_1c

    if-nez v6, :cond_1b

    goto :goto_a

    :cond_1b
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_1d
    :goto_d
    move v1, v4

    goto/16 :goto_12

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_1f
    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_25

    if-nez v6, :cond_20

    :goto_e
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_20
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzev;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_24

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_f
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v8

    :goto_10
    if-ge v4, v5, :cond_1d

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ne v2, v8, :cond_1d

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_23

    if-nez v6, :cond_21

    goto :goto_e

    :cond_21
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzev;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_22

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_f

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :pswitch_6
    if-ne v6, v11, :cond_28

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_27

    if-ne v1, v2, :cond_26

    goto/16 :goto_12

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_27
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    throw v13

    :cond_28
    if-eqz v6, :cond_29

    goto/16 :goto_11

    :cond_29
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    throw v13

    :pswitch_7
    if-ne v6, v11, :cond_2c

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_2b

    if-ne v1, v2, :cond_2a

    goto/16 :goto_12

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_2b
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    throw v13

    :cond_2c
    if-eq v6, v10, :cond_2d

    goto/16 :goto_11

    :cond_2d
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    throw v13

    :pswitch_8
    if-ne v6, v11, :cond_30

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_2f

    if-ne v1, v2, :cond_2e

    goto/16 :goto_12

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_2f
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    throw v13

    :cond_30
    if-eq v6, v12, :cond_31

    goto/16 :goto_11

    :cond_31
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    throw v13

    :pswitch_9
    if-ne v6, v11, :cond_32

    invoke-static {v3, v4, v14, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzf([BILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    goto/16 :goto_12

    :cond_32
    if-nez v6, :cond_1d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v14

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/play_billing/zzao;->zzl(I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v11, :cond_35

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_34

    if-ne v1, v2, :cond_33

    goto :goto_12

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_34
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    throw v13

    :cond_35
    if-eqz v6, :cond_36

    goto :goto_11

    :cond_36
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    throw v13

    :pswitch_b
    if-ne v6, v11, :cond_39

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_38

    if-ne v1, v2, :cond_37

    goto :goto_12

    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_38
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v13

    :cond_39
    if-eq v6, v10, :cond_3a

    goto :goto_11

    :cond_3a
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v13

    :pswitch_c
    if-ne v6, v11, :cond_3d

    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_3c

    if-ne v1, v2, :cond_3b

    goto :goto_12

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_3c
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v13

    :cond_3d
    if-eq v6, v12, :cond_3e

    :goto_11
    goto/16 :goto_d

    :goto_12
    return v1

    :cond_3e
    invoke-static {v14}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    goto :goto_14

    :goto_13
    throw v13

    :goto_14
    goto :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzt(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzw(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzu(II)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzf:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzw(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzv(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzw(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zzx(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzy(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzz(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzew;->zza:Lcom/google/android/gms/internal/play_billing/zzew;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzbt;->zzJ:Lcom/google/android/gms/internal/play_billing/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza()I

    move-result v7

    if-lt v5, v7, :cond_0

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzbt;->zzW:Lcom/google/android/gms/internal/play_billing/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza()I

    move-result v7

    if-gt v5, v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    :cond_0
    int-to-long v7, v4

    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_16

    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v7

    :goto_3
    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    :goto_4
    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_5
    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto/16 :goto_16

    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_6
    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_7
    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_8
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    :goto_9
    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v4

    :goto_a
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_5

    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    :goto_b
    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_a

    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    :goto_d
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/play_billing/zzbi;->$r8$clinit:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    add-int/2addr v4, v6

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v5, :cond_1

    :goto_f
    goto :goto_d

    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v4

    goto :goto_a

    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_10
    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_8

    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_11
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v4

    :goto_12
    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_5

    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_11

    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_16

    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    :goto_13
    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    add-int/2addr v5, v6

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzq(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzv(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget v5, Lcom/google/android/gms/internal/play_billing/zzdr;->$r8$clinit:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_13

    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzk(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_13

    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzx(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_13

    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzm(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_13

    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_13

    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_2

    goto/16 :goto_13

    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzb(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzt(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zza(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzj(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzl(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_2f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :pswitch_30
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    goto/16 :goto_3

    :pswitch_31
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_4

    :pswitch_32
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_14
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_9

    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_b

    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_c

    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_e

    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v5, :cond_1

    goto/16 :goto_f

    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_10

    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_14

    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_15
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    goto/16 :goto_12

    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_15

    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_16
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zza(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo(Ljava/lang/Object;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_24
        :pswitch_25
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_24
        :pswitch_25
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v3

    int-to-long v5, v5

    const/16 v7, 0x25

    const/16 v8, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    goto/16 :goto_b

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    :goto_5
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    ushr-long v5, v3, v8

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_b

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzU(Ljava/lang/Object;J)Z

    move-result v3

    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzcg;->zza(Z)I

    move-result v3

    goto :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_6

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_12
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn(Ljava/lang/Object;J)F

    move-result v3

    :goto_8
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    goto/16 :goto_5

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_b

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_5

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_a

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    goto :goto_7

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_8

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_9

    :cond_1
    :goto_b
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_b
        :pswitch_17
        :pswitch_8
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzG(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_17

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v7

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzu(II)I

    move-result v1

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzt(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v8, :cond_2

    move/from16 v24, v0

    move v2, v3

    move v7, v4

    move/from16 v19, v5

    move-object/from16 v28, v10

    move v0, v11

    const/16 v18, -0x1

    const/16 v23, 0x0

    goto/16 :goto_14

    :cond_2
    and-int/lit8 v1, v4, 0x7

    iget-object v8, v15, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v19, v2, 0x1

    aget v7, v8, v19

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v11

    move/from16 v19, v4

    const v17, 0xfffff

    and-int v4, v7, v17

    int-to-long v12, v4

    const/16 v4, 0x11

    move-wide/from16 v20, v12

    if-gt v11, v4, :cond_c

    add-int/lit8 v4, v2, 0x2

    aget v4, v8, v4

    ushr-int/lit8 v8, v4, 0x14

    const/4 v13, 0x1

    shl-int v8, v13, v8

    const v13, 0xfffff

    and-int/2addr v4, v13

    if-eq v4, v6, :cond_4

    if-eq v6, v13, :cond_3

    int-to-long v12, v6

    invoke-virtual {v10, v14, v12, v13, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v4

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v13, v4

    move v12, v5

    goto :goto_4

    :cond_4
    move v12, v5

    move v13, v6

    :goto_4
    const/4 v4, 0x5

    packed-switch v11, :pswitch_data_0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    invoke-direct {v15, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move v11, v0

    move-object v0, v7

    move v6, v2

    move-object/from16 v2, p2

    move/from16 p3, v13

    move/from16 v13, v19

    move/from16 v4, p4

    move/from16 v17, v11

    move v11, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    invoke-direct {v15, v14, v11, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v12, v8

    move-object/from16 v12, p2

    move/from16 v6, p3

    move v2, v11

    move v3, v13

    move/from16 v1, v17

    const/4 v8, -0x1

    :goto_5
    move/from16 v13, p4

    :goto_6
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_5
    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move-object/from16 v6, p2

    move v13, v3

    move/from16 v20, v19

    goto/16 :goto_10

    :pswitch_0
    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move-object/from16 v6, p2

    if-nez v1, :cond_6

    move-wide/from16 v4, v20

    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v7

    iget-wide v0, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v12, v8

    move-object v12, v6

    move v0, v7

    :goto_7
    move v2, v11

    move v3, v13

    move/from16 v1, v17

    :goto_8
    const/4 v8, -0x1

    move/from16 v6, p3

    goto :goto_5

    :cond_6
    move/from16 v20, v13

    move v13, v3

    goto/16 :goto_10

    :pswitch_1
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move-wide/from16 v4, v20

    if-nez v1, :cond_6

    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v1

    :cond_7
    :goto_9
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v5, v12, v8

    :goto_b
    move-object v12, v6

    goto :goto_7

    :pswitch_2
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move-wide/from16 v4, v20

    if-nez v1, :cond_6

    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_9

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    move v2, v11

    move v5, v12

    move v3, v13

    move/from16 v1, v17

    const/4 v8, -0x1

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v12, v6

    move/from16 v6, p3

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zza([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    :goto_c
    iget-object v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    invoke-direct {v15, v14, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    invoke-direct {v15, v14, v11, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    const/high16 v0, 0x20000000

    and-int/2addr v0, v7

    if-nez v0, :cond_9

    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzg([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    goto :goto_c

    :cond_9
    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzh([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    goto :goto_c

    :pswitch_6
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move-wide/from16 v4, v20

    if-nez v1, :cond_6

    invoke-static {v6, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    const-wide/16 v19, 0x0

    cmp-long v3, v1, v19

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    goto :goto_d

    :cond_a
    const/4 v1, 0x0

    :goto_d
    invoke-static {v14, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_a

    :pswitch_7
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    move/from16 v19, v8

    move-wide/from16 v7, v20

    if-ne v1, v4, :cond_6

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    or-int v5, v12, v19

    goto/16 :goto_b

    :pswitch_8
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move/from16 v13, v19

    const/4 v0, 0x1

    move/from16 v19, v8

    move-wide/from16 v7, v20

    if-ne v1, v0, :cond_6

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v20, v13

    move v13, v3

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_e
    add-int/lit8 v0, v13, 0x8

    :goto_f
    or-int v5, v12, v19

    move/from16 v13, p4

    move-object v12, v6

    move v2, v11

    move/from16 v1, v17

    move/from16 v3, v20

    const/4 v8, -0x1

    move/from16 v6, p3

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move v13, v3

    move/from16 v29, v19

    move/from16 v19, v8

    move-wide/from16 v7, v20

    move/from16 v20, v29

    if-nez v1, :cond_b

    invoke-static {v6, v13, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f

    :pswitch_a
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move v13, v3

    move/from16 v29, v19

    move/from16 v19, v8

    move-wide/from16 v7, v20

    move/from16 v20, v29

    if-nez v1, :cond_b

    invoke-static {v6, v13, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v13

    iget-wide v4, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v12, v19

    move-object v12, v6

    move v2, v11

    move v0, v13

    move/from16 v1, v17

    move/from16 v3, v20

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    move v13, v3

    move/from16 v29, v19

    move/from16 v19, v8

    move-wide/from16 v7, v20

    move/from16 v20, v29

    if-ne v1, v4, :cond_b

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v7, v8, v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v13, 0x4

    goto :goto_f

    :pswitch_c
    move-object/from16 v6, p2

    move/from16 v17, v0

    move v11, v2

    move/from16 p3, v13

    const/4 v0, 0x1

    move v13, v3

    move/from16 v29, v19

    move/from16 v19, v8

    move-wide/from16 v7, v20

    move/from16 v20, v29

    if-ne v1, v0, :cond_b

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v7, v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzo(Ljava/lang/Object;JD)V

    goto/16 :goto_e

    :cond_b
    :goto_10
    move/from16 v6, p3

    move/from16 v0, p5

    move-object/from16 v28, v10

    move/from16 v23, v11

    move/from16 v19, v12

    move v2, v13

    move/from16 v24, v17

    move/from16 v7, v20

    const/16 v18, -0x1

    goto/16 :goto_14

    :cond_c
    move v12, v0

    move v13, v3

    move v4, v7

    move v3, v11

    move-wide/from16 v7, v20

    move v11, v2

    move/from16 v20, v19

    const/16 v0, 0x1b

    if-ne v3, v0, :cond_10

    const/4 v0, 0x2

    if-ne v1, v0, :cond_f

    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_11

    :cond_d
    add-int/2addr v1, v1

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v7, v0

    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    move/from16 v1, v20

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move/from16 v19, v5

    move-object v5, v7

    move/from16 v21, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move/from16 v13, p4

    move v2, v11

    move v1, v12

    move/from16 v5, v19

    move/from16 v3, v20

    move/from16 v6, v21

    const/4 v8, -0x1

    move-object/from16 v12, p2

    goto/16 :goto_6

    :cond_f
    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v28, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move v15, v13

    const/16 v18, -0x1

    goto/16 :goto_13

    :cond_10
    move/from16 v19, v5

    move/from16 v21, v6

    const/16 v0, 0x31

    if-gt v3, v0, :cond_12

    int-to-long v5, v4

    move-object/from16 v0, p0

    move v4, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v13

    move/from16 v22, v4

    move/from16 v4, p4

    move-wide/from16 v24, v5

    move/from16 v5, v20

    move v6, v12

    move-wide/from16 v26, v7

    const v8, 0xfffff

    move/from16 v7, v22

    const/16 v18, -0x1

    move v8, v11

    move-object/from16 v28, v10

    move-wide/from16 v9, v24

    move/from16 v15, p5

    move/from16 v23, v11

    move/from16 v11, p3

    move/from16 v24, v12

    move v15, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_11

    :goto_12
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v19

    move/from16 v3, v20

    move/from16 v6, v21

    move/from16 v2, v23

    move/from16 v1, v24

    move-object/from16 v10, v28

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_11
    move v2, v0

    move/from16 v7, v20

    move/from16 v6, v21

    move/from16 v0, p5

    goto/16 :goto_14

    :cond_12
    move/from16 v22, v1

    move/from16 p3, v3

    move-wide/from16 v26, v7

    move-object/from16 v28, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move v15, v13

    const/16 v18, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    move/from16 v7, v22

    if-ne v9, v0, :cond_14

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v23

    move-wide/from16 v6, v26

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_12

    :cond_13
    :goto_13
    move/from16 v0, p5

    move v2, v15

    move/from16 v7, v20

    move/from16 v6, v21

    goto :goto_14

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move v8, v4

    move/from16 v4, p4

    move/from16 v5, v20

    move/from16 v6, v24

    move-wide/from16 v10, v26

    move/from16 v12, v23

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_12

    :goto_14
    if-ne v7, v0, :cond_15

    if-eqz v0, :cond_15

    move-object/from16 v8, p0

    move v9, v0

    move v0, v2

    move v3, v7

    move/from16 v5, v19

    :goto_15
    const v1, 0xfffff

    goto/16 :goto_17

    :cond_15
    move-object/from16 v8, p0

    move v9, v0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    move-object/from16 v10, p6

    if-eqz v0, :cond_16

    iget-object v0, v10, Lcom/google/android/gms/internal/play_billing/zzan;->zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbn;

    if-eq v0, v1, :cond_16

    iget-object v1, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

    move/from16 v11, v24

    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb(Lcom/google/android/gms/internal/play_billing/zzdf;I)Lcom/google/android/gms/internal/play_billing/zzbz;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    goto :goto_16

    :cond_16
    move/from16 v11, v24

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    :goto_16
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move-object v15, v8

    move v1, v11

    move/from16 v5, v19

    move/from16 v2, v23

    const/4 v8, -0x1

    move v11, v9

    move-object v9, v10

    move-object/from16 v10, v28

    goto/16 :goto_0

    :cond_17
    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v28, v10

    move v9, v11

    move-object v8, v15

    goto :goto_15

    :goto_17
    if-eq v6, v1, :cond_18

    int-to-long v6, v6

    move-object/from16 v2, p1

    move-object/from16 v4, v28

    invoke-virtual {v4, v2, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_18

    :cond_18
    move-object/from16 v2, p1

    :goto_18
    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzj:I

    :goto_19
    iget v5, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzk:I

    if-ge v4, v5, :cond_1b

    iget-object v5, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzi:[I

    aget v5, v5, v4

    iget-object v6, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v6, v6, v5

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v6

    and-int/2addr v6, v1

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_19

    goto :goto_1a

    :cond_19
    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v7

    if-nez v7, :cond_1a

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_1a
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_1b
    move/from16 v1, p4

    if-nez v9, :cond_1d

    if-ne v0, v1, :cond_1c

    goto :goto_1b

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    throw v0

    :cond_1d
    if-gt v0, v1, :cond_1e

    if-ne v3, v9, :cond_1e

    :goto_1b
    return v0

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzi()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzcb;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzq(I)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzo()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl:Lcom/google/android/gms/internal/play_billing/zzct;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzct;->zza(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzf(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzg(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzb(Ljava/lang/Object;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzG(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v3, v3, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v1

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_2
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :pswitch_3
    sget v1, Lcom/google/android/gms/internal/play_billing/zzdr;->$r8$clinit:I

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzda;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl:Lcom/google/android/gms/internal/play_billing/zzct;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzct;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_6

    :pswitch_5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzr(Ljava/lang/Object;JJ)V

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_5
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :pswitch_e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzm(Ljava/lang/Object;JZ)V

    goto :goto_3

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzp(Ljava/lang/Object;JF)V

    goto/16 :goto_3

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzo(Ljava/lang/Object;JD)V

    goto/16 :goto_3

    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzB(Lcom/google/android/gms/internal/play_billing/zzeg;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzan;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    const/4 v10, 0x1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzew;->zza:Lcom/google/android/gms/internal/play_billing/zzew;

    iget v0, v15, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    const/4 v8, -0x1

    add-int/2addr v0, v8

    if-eqz v0, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzG(Ljava/lang/Object;)V

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const v6, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_17

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    move/from16 v17, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    :goto_1
    ushr-int/lit8 v0, v17, 0x3

    if-le v0, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzu(II)I

    move-result v1

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzt(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v8, :cond_2

    move/from16 v24, v0

    move v2, v3

    move v6, v4

    move/from16 v28, v5

    move-object/from16 v27, v7

    const/4 v14, 0x2

    const/16 v18, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    goto/16 :goto_15

    :cond_2
    and-int/lit8 v1, v17, 0x7

    iget-object v8, v15, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v19, v2, 0x1

    aget v10, v8, v19

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v9

    move/from16 p3, v0

    and-int v0, v10, v6

    move-object/from16 v21, v7

    int-to-long v6, v0

    const/16 v0, 0x11

    if-gt v9, v0, :cond_d

    const/4 v0, 0x2

    add-int/lit8 v23, v2, 0x2

    aget v0, v8, v23

    ushr-int/lit8 v8, v0, 0x14

    const/16 v20, 0x1

    shl-int v8, v20, v8

    const v13, 0xfffff

    and-int/2addr v0, v13

    move-wide/from16 v22, v6

    if-eq v0, v5, :cond_5

    if-eq v5, v13, :cond_3

    int-to-long v5, v5

    move-object/from16 v7, v21

    invoke-virtual {v7, v14, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :cond_3
    move-object/from16 v7, v21

    :goto_4
    if-eq v0, v13, :cond_4

    int-to-long v4, v0

    invoke-virtual {v7, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_4
    move/from16 v21, v0

    move v6, v4

    goto :goto_5

    :cond_5
    move-object/from16 v7, v21

    move v6, v4

    move/from16 v21, v5

    :goto_5
    const/4 v0, 0x5

    packed-switch v9, :pswitch_data_0

    :cond_6
    move/from16 v24, p3

    move v9, v2

    :cond_7
    :goto_6
    move v10, v3

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_10

    :pswitch_0
    if-nez v1, :cond_6

    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v9

    iget-wide v0, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v4

    move/from16 v24, p3

    move-object v0, v7

    move-object/from16 v1, p1

    move v10, v2

    move-wide/from16 v2, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v6, v8

    move/from16 v13, p4

    move v0, v9

    :goto_7
    move v2, v10

    :goto_8
    move/from16 v5, v21

    move/from16 v1, v24

    :goto_9
    const v6, 0xfffff

    const/4 v8, -0x1

    const/4 v10, 0x1

    goto/16 :goto_0

    :pswitch_1
    move/from16 v24, p3

    move v10, v2

    if-nez v1, :cond_9

    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v1

    move-wide/from16 v4, v22

    :goto_a
    invoke-virtual {v7, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v4, v6, v8

    move/from16 v13, p4

    goto :goto_7

    :cond_9
    move v9, v10

    goto :goto_6

    :pswitch_2
    move/from16 v24, p3

    move v10, v2

    move-wide/from16 v4, v22

    if-nez v1, :cond_9

    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    goto :goto_a

    :pswitch_3
    move/from16 v24, p3

    move v10, v2

    move-wide/from16 v4, v22

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zza([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-object v2, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v7, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v4, v6, v8

    move/from16 v13, p4

    move v0, v1

    goto :goto_7

    :pswitch_4
    move/from16 v24, p3

    move v10, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    invoke-direct {v15, v14, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v15, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object v0, v9

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    invoke-direct {v15, v14, v10, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_b

    :pswitch_5
    move/from16 v24, p3

    move v9, v2

    move-wide/from16 v4, v22

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    const/high16 v0, 0x20000000

    and-int/2addr v0, v10

    if-nez v0, :cond_a

    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzg([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    goto :goto_c

    :cond_a
    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzh([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    :goto_c
    iget-object v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v7, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    or-int v4, v6, v8

    move/from16 v13, p4

    move v2, v9

    goto/16 :goto_8

    :pswitch_6
    move/from16 v24, p3

    move v9, v2

    move-wide/from16 v4, v22

    if-nez v1, :cond_7

    invoke-static {v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    const-wide/16 v22, 0x0

    cmp-long v3, v1, v22

    if-eqz v3, :cond_b

    const/4 v1, 0x1

    goto :goto_e

    :cond_b
    const/4 v1, 0x0

    :goto_e
    invoke-static {v14, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzm(Ljava/lang/Object;JZ)V

    goto :goto_d

    :pswitch_7
    move/from16 v24, p3

    move v9, v2

    move-wide/from16 v4, v22

    if-ne v1, v0, :cond_7

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-virtual {v7, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    goto :goto_d

    :pswitch_8
    move/from16 v24, p3

    move v9, v2

    move-wide/from16 v4, v22

    const/4 v0, 0x1

    if-ne v1, v0, :cond_7

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v22

    move-object v0, v7

    move-object/from16 v1, p1

    move v10, v3

    move-wide v2, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    add-int/lit8 v0, v10, 0x8

    goto :goto_d

    :pswitch_9
    move/from16 v24, p3

    move v9, v2

    move v10, v3

    move-wide/from16 v4, v22

    if-nez v1, :cond_8

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-virtual {v7, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :pswitch_a
    move/from16 v24, p3

    move v9, v2

    move v10, v3

    move-wide/from16 v4, v22

    if-nez v1, :cond_8

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v10

    iget-wide v2, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide/from16 v22, v2

    move-wide v2, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v6, v8

    move/from16 v13, p4

    move v2, v9

    move v0, v10

    goto/16 :goto_8

    :pswitch_b
    move/from16 v24, p3

    move v9, v2

    move v10, v3

    move-wide/from16 v4, v22

    if-ne v1, v0, :cond_8

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_d

    :pswitch_c
    move/from16 v24, p3

    move v9, v2

    move v10, v3

    move-wide/from16 v4, v22

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzo(Ljava/lang/Object;JD)V

    goto :goto_f

    :cond_c
    :goto_10
    move-object/from16 v27, v7

    move v2, v10

    move/from16 v28, v21

    const/4 v14, 0x2

    const/16 v18, -0x1

    const/16 v20, 0x1

    move/from16 v21, v9

    goto/16 :goto_15

    :cond_d
    move/from16 v24, p3

    move v8, v3

    move-wide v11, v6

    move-object/from16 v7, v21

    const/4 v3, 0x1

    const v13, 0xfffff

    move v6, v2

    const/16 v0, 0x1b

    if-ne v9, v0, :cond_11

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    invoke-virtual {v7, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xa

    goto :goto_11

    :cond_e
    add-int/2addr v1, v1

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v7, v14, v11, v12, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v9, v0

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    move/from16 v1, v17

    const/16 v19, 0x2

    move-object/from16 v2, p2

    const/16 v20, 0x1

    move v3, v8

    move v10, v4

    move/from16 v4, p4

    move v11, v5

    move-object v5, v9

    move/from16 v21, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v4, v10

    move v5, v11

    move/from16 v2, v21

    move/from16 v1, v24

    const v6, 0xfffff

    const/4 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v11, p5

    goto/16 :goto_0

    :cond_10
    move/from16 v21, v6

    move/from16 p3, v4

    move/from16 v28, v5

    move-object/from16 v27, v7

    move v15, v8

    const/4 v14, 0x2

    const/16 v18, -0x1

    const/16 v20, 0x1

    goto/16 :goto_14

    :cond_11
    move/from16 v21, v6

    const/16 v19, 0x2

    const/16 v20, 0x1

    move v6, v5

    move v5, v4

    const/16 v0, 0x31

    if-gt v9, v0, :cond_13

    int-to-long v3, v10

    move-object/from16 v0, p0

    move v10, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v22, v3

    move v3, v8

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move-wide/from16 v25, v11

    move v12, v6

    move/from16 v6, v24

    move-object v11, v7

    move v7, v10

    move v10, v8

    const/16 v18, -0x1

    move/from16 v8, v21

    move/from16 v19, v9

    move/from16 p3, v15

    move v15, v10

    move-wide/from16 v9, v22

    move-object/from16 v27, v11

    move/from16 v11, v19

    move/from16 v28, v12

    move-wide/from16 v12, v25

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_12

    :goto_12
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v4, p3

    move/from16 v13, p4

    move-object/from16 v11, p5

    :goto_13
    move/from16 v2, v21

    move/from16 v1, v24

    move-object/from16 v7, v27

    move/from16 v5, v28

    goto/16 :goto_9

    :cond_12
    move/from16 v6, p3

    move v2, v0

    const/4 v14, 0x2

    goto/16 :goto_15

    :cond_13
    move/from16 p3, v5

    move/from16 v28, v6

    move-object/from16 v27, v7

    move v15, v8

    move/from16 v19, v9

    move-wide/from16 v25, v11

    const/16 v18, -0x1

    move v7, v1

    const/16 v0, 0x32

    const/4 v14, 0x2

    if-ne v9, v0, :cond_16

    if-ne v7, v14, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v25

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_12

    :cond_14
    move/from16 v6, p3

    move v2, v0

    goto :goto_15

    :cond_15
    :goto_14
    move/from16 v6, p3

    move v2, v15

    goto :goto_15

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v24

    move v8, v10

    move-wide/from16 v10, v25

    move/from16 v12, v21

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_12

    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move v4, v6

    goto :goto_13

    :cond_17
    move/from16 p3, v4

    move v11, v5

    move-object/from16 v27, v7

    const v1, 0xfffff

    if-eq v11, v1, :cond_18

    int-to-long v1, v11

    move-object/from16 v3, p1

    move/from16 v10, p3

    move-object/from16 v4, v27

    invoke-virtual {v4, v3, v1, v2, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    move/from16 v4, p4

    if-ne v0, v4, :cond_19

    return-void

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    throw v0

    :cond_1a
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzew;->zza:Lcom/google/android/gms/internal/play_billing/zzew;

    iget v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xfffff

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v3, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v9, v9, v4

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_1
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-interface {v2, v9, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_13

    :pswitch_1
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_2
    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto/16 :goto_13

    :pswitch_2
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    :goto_3
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto/16 :goto_13

    :pswitch_3
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_4
    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto/16 :goto_13

    :pswitch_4
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    :goto_5
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto/16 :goto_13

    :pswitch_5
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    :goto_6
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto/16 :goto_13

    :pswitch_6
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    :goto_7
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto/16 :goto_13

    :pswitch_7
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_8
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto/16 :goto_13

    :pswitch_8
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_9
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-interface {v2, v9, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_13

    :pswitch_9
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_a
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_13

    :pswitch_a
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzU(Ljava/lang/Object;J)Z

    move-result v8

    :goto_b
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto/16 :goto_13

    :pswitch_b
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    :goto_c
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto/16 :goto_13

    :pswitch_c
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_d
    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto/16 :goto_13

    :pswitch_d
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    :goto_e
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto/16 :goto_13

    :pswitch_e
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_f
    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto/16 :goto_13

    :pswitch_f
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_10
    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto/16 :goto_13

    :pswitch_10
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn(Ljava/lang/Object;J)F

    move-result v8

    :goto_11
    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto/16 :goto_13

    :pswitch_11
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm(Ljava/lang/Object;J)D

    move-result-wide v10

    :goto_12
    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    goto/16 :goto_13

    :pswitch_12
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v2, v9, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzN(Lcom/google/android/gms/internal/play_billing/zzey;ILjava/lang/Object;I)V

    goto/16 :goto_13

    :pswitch_13
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-static {v9, v8, v2, v10}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_13

    :pswitch_14
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_15
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_16
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_17
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_18
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_19
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_1a
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_1b
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_1c
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_1d
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_1e
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_1f
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_20
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_21
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_22
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_23
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_24
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_25
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_26
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_27
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_28
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_13

    :pswitch_29
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-static {v9, v8, v2, v10}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_13

    :pswitch_2a
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_13

    :pswitch_2b
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_2c
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_2d
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_2e
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_2f
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_30
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_31
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_32
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_13

    :pswitch_33
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_1

    :pswitch_34
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_2

    :pswitch_35
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3

    :pswitch_36
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_4

    :pswitch_37
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_5

    :pswitch_38
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_6

    :pswitch_39
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_7

    :pswitch_3a
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_8

    :pswitch_3b
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_9

    :pswitch_3c
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_a

    :pswitch_3d
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v8

    goto/16 :goto_b

    :pswitch_3e
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_c

    :pswitch_3f
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_d

    :pswitch_40
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_e

    :pswitch_41
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_f

    :pswitch_42
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_10

    :pswitch_43
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v8

    goto/16 :goto_11

    :pswitch_44
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v10

    goto/16 :goto_12

    :cond_0
    :goto_13
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    throw v4

    :cond_3
    iget-boolean v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v10, 0x0

    :goto_14
    if-ge v8, v3, :cond_1

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v13, v12, v8

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v14

    const/16 v15, 0x11

    if-gt v14, v15, :cond_5

    add-int/lit8 v15, v8, 0x2

    aget v12, v12, v15

    and-int v15, v12, v7

    if-eq v15, v9, :cond_4

    int-to-long v9, v15

    invoke-virtual {v4, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    move v9, v15

    :cond_4
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v5, v12

    goto :goto_15

    :cond_5
    const/4 v12, 0x0

    :goto_15
    and-int/2addr v11, v7

    int-to-long v6, v11

    packed-switch v14, :pswitch_data_1

    :cond_6
    :goto_16
    const/4 v14, 0x0

    goto/16 :goto_17

    :pswitch_45
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto :goto_16

    :pswitch_46
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto :goto_16

    :pswitch_47
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto :goto_16

    :pswitch_48
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto :goto_16

    :pswitch_49
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto :goto_16

    :pswitch_4a
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto :goto_16

    :pswitch_4b
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto :goto_16

    :pswitch_4c
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto :goto_16

    :pswitch_4d
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_16

    :pswitch_4e
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_16

    :pswitch_4f
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzU(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto/16 :goto_16

    :pswitch_50
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto/16 :goto_16

    :pswitch_51
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto/16 :goto_16

    :pswitch_52
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto/16 :goto_16

    :pswitch_53
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto/16 :goto_16

    :pswitch_54
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto/16 :goto_16

    :pswitch_55
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto/16 :goto_16

    :pswitch_56
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    goto/16 :goto_16

    :pswitch_57
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v2, v13, v6, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzN(Lcom/google/android/gms/internal/play_billing/zzey;ILjava/lang/Object;I)V

    goto/16 :goto_16

    :pswitch_58
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_16

    :pswitch_59
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_5a
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_5b
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_5c
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_5d
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_5e
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_5f
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_60
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_61
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_62
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_63
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_64
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_65
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_66
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_67
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_68
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_69
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_6a
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_6b
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_6c
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_16

    :pswitch_6d
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_16

    :pswitch_6e
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_16

    :pswitch_6f
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_16

    :pswitch_70
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_71
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_72
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_73
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_74
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_75
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_76
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_77
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_17

    :pswitch_78
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_17

    :pswitch_79
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto/16 :goto_17

    :pswitch_7a
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto/16 :goto_17

    :pswitch_7b
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto/16 :goto_17

    :pswitch_7c
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto/16 :goto_17

    :pswitch_7d
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto/16 :goto_17

    :pswitch_7e
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto/16 :goto_17

    :pswitch_7f
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto/16 :goto_17

    :pswitch_80
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_17

    :pswitch_81
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_17

    :pswitch_82
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto :goto_17

    :pswitch_83
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto :goto_17

    :pswitch_84
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto :goto_17

    :pswitch_85
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto :goto_17

    :pswitch_86
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto :goto_17

    :pswitch_87
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto :goto_17

    :pswitch_88
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto :goto_17

    :pswitch_89
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_7

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    :cond_7
    :goto_17
    add-int/lit8 v8, v8, 0x3

    const/4 v6, 0x0

    const v7, 0xfffff

    goto/16 :goto_14

    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    goto :goto_19

    :goto_18
    throw v4

    :goto_19
    goto :goto_18

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_2
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzj:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzi:[I

    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v13, v2, v12

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v4, v12, 0x2

    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzQ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v14, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v11

    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzdp;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v14, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzQ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzdp;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    goto :goto_6

    :goto_5
    throw v11

    :goto_6
    goto :goto_5
.end method
