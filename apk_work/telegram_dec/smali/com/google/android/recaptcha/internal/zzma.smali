.class final Lcom/google/android/recaptcha/internal/zzma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/recaptcha/internal/zzlx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlv;->zzx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlv;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/recaptcha/internal/zzgi;->zza:I

    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzly;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzly;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzma;->zza:Lcom/google/android/recaptcha/internal/zzlx;

    return-void
.end method

.method static bridge synthetic zza([BII)I
    .locals 5

    sub-int/2addr p2, p1

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    const/16 v1, -0xc

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    const/16 v3, -0x41

    if-eq p2, v2, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    aget-byte p2, p0, p1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_5

    if-gt p2, v3, :cond_5

    if-le p0, v3, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p2, 0x8

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_5

    if-le p0, v3, :cond_3

    goto :goto_0

    :cond_3
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    return p0

    :cond_4
    if-gt v0, v1, :cond_5

    return v0

    :cond_5
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static zzb(Ljava/lang/CharSequence;[BII)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int v2, p2, p3

    const/16 v3, 0x80

    if-ge v1, v0, :cond_0

    add-int v4, v1, p2

    if-ge v4, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_0

    int-to-byte v2, v5

    aput-byte v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p2, v0

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v1

    :goto_1
    if-ge v1, v0, :cond_b

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ge p3, v3, :cond_2

    if-ge p2, v2, :cond_2

    add-int/lit8 v4, p2, 0x1

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    move p2, v4

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge p3, v4, :cond_3

    add-int/lit8 v4, v2, -0x2

    if-gt p2, v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x2

    ushr-int/lit8 v6, p3, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    move p2, v5

    goto :goto_2

    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt p3, v5, :cond_4

    if-le p3, v4, :cond_5

    :cond_4
    add-int/lit8 v6, v2, -0x3

    if-gt p2, v6, :cond_5

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p2, 0x3

    ushr-int/lit8 v7, p3, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    ushr-int/lit8 p2, p3, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v5

    move p2, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v2, -0x4

    if-gt p2, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p2, 0x2

    add-int/lit8 v7, p2, 0x3

    invoke-static {p3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    ushr-int/lit8 v1, p3, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 v1, p3, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    ushr-int/lit8 v1, p3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v6

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v7

    move v1, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    :cond_7
    new-instance p0, Lcom/google/android/recaptcha/internal/zzlz;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/recaptcha/internal/zzlz;-><init>(II)V

    throw p0

    :cond_8
    if-lt p3, v5, :cond_a

    if-gt p3, v4, :cond_a

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq p1, v2, :cond_9

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    if-nez p0, :cond_a

    :cond_9
    new-instance p0, Lcom/google/android/recaptcha/internal/zzlz;

    invoke-direct {p0, v1, v0}, Lcom/google/android/recaptcha/internal/zzlz;-><init>(II)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed writing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    return p2
.end method

.method static zzc(Ljava/lang/CharSequence;)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-lt v6, v7, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Lcom/google/android/recaptcha/internal/zzlz;

    invoke-direct {p0, v2, v4}, Lcom/google/android/recaptcha/internal/zzlz;-><init>(II)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    :cond_7
    int-to-long v0, v3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0x100000000L

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static zzd([BII)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzje;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    array-length v4, p0

    sub-int v5, v4, p1

    or-int v6, p1, p2

    sub-int/2addr v5, p2

    or-int/2addr v5, v6

    if-ltz v5, :cond_9

    add-int v4, p1, p2

    new-array p2, p2, [C

    const/4 v5, 0x0

    :goto_0
    if-ge p1, v4, :cond_0

    aget-byte v6, p0, p1

    invoke-static {v6}, Lcom/google/android/recaptcha/internal/zzlw;->zzd(B)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/2addr p1, v3

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    aput-char v6, p2, v5

    move v5, v7

    goto :goto_0

    :cond_0
    move v11, v5

    :cond_1
    :goto_1
    if-ge p1, v4, :cond_8

    add-int/lit8 v5, p1, 0x1

    aget-byte v6, p0, p1

    invoke-static {v6}, Lcom/google/android/recaptcha/internal/zzlw;->zzd(B)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 p1, v11, 0x1

    int-to-char v6, v6

    aput-char v6, p2, v11

    move v11, p1

    move p1, v5

    :goto_2
    if-ge p1, v4, :cond_1

    aget-byte v5, p0, p1

    invoke-static {v5}, Lcom/google/android/recaptcha/internal/zzlw;->zzd(B)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/2addr p1, v3

    add-int/lit8 v6, v11, 0x1

    int-to-char v5, v5

    aput-char v5, p2, v11

    move v11, v6

    goto :goto_2

    :cond_2
    const/16 v7, -0x20

    if-ge v6, v7, :cond_4

    if-ge v5, v4, :cond_3

    add-int/lit8 v7, v11, 0x1

    add-int/2addr p1, v2

    aget-byte v5, p0, v5

    invoke-static {v6, v5, p2, v11}, Lcom/google/android/recaptcha/internal/zzlw;->zzc(BB[CI)V

    :goto_3
    move v11, v7

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzje;->zzd()Lcom/google/android/recaptcha/internal/zzje;

    move-result-object p0

    throw p0

    :cond_4
    const/16 v7, -0x10

    if-ge v6, v7, :cond_6

    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_5

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v8, p1, 0x2

    aget-byte v5, p0, v5

    add-int/2addr p1, v1

    aget-byte v8, p0, v8

    invoke-static {v6, v5, v8, p2, v11}, Lcom/google/android/recaptcha/internal/zzlw;->zzb(BBB[CI)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzje;->zzd()Lcom/google/android/recaptcha/internal/zzje;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 v7, v4, -0x2

    if-ge v5, v7, :cond_7

    add-int/lit8 v7, p1, 0x2

    aget-byte v8, p0, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v7, p0, v7

    add-int/lit8 p1, p1, 0x4

    aget-byte v9, p0, v5

    move v5, v6

    move v6, v8

    move v8, v9

    move-object v9, p2

    move v10, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/recaptcha/internal/zzlw;->zza(BBBB[CI)V

    add-int/2addr v11, v2

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzje;->zzd()Lcom/google/android/recaptcha/internal/zzje;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static zze([B)Z
    .locals 3

    sget-object v0, Lcom/google/android/recaptcha/internal/zzma;->zza:Lcom/google/android/recaptcha/internal/zzlx;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/recaptcha/internal/zzlx;->zzb([BII)Z

    move-result p0

    return p0
.end method

.method static zzf([BII)Z
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzma;->zza:Lcom/google/android/recaptcha/internal/zzlx;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzlx;->zzb([BII)Z

    move-result p0

    return p0
.end method
