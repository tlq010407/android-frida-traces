.class public final Lorg/tukaani/xz/simple/PowerPC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    iput p2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 8

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x4

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_2

    aget-byte v1, p1, v0

    and-int/lit16 v2, v1, 0xfc

    const/16 v3, 0x48

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-byte v4, p1, v2

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v5, v0, 0x1

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    and-int/lit16 v4, v4, 0xfc

    or-int/2addr v1, v4

    iget-boolean v4, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v4, v0

    sub-int/2addr v4, p2

    add-int/2addr v1, v4

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v4, v0

    sub-int/2addr v4, p2

    sub-int/2addr v1, v4

    :goto_1
    ushr-int/lit8 v4, v1, 0x18

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v6

    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    iget p1, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    return v0
.end method
