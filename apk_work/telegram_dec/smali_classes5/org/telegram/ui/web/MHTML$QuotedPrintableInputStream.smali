.class public Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/MHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuotedPrintableInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private hexDigitToInt(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x37

    return p1

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x57

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid hexadecimal digit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hexToByte(II)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;->hexDigitToInt(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p2}, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;->hexDigitToInt(I)I

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public read()I
    .locals 4

    .line 0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-ne v0, v2, :cond_0

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;->read()I

    move-result v0

    return v0

    :cond_0
    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;->hexToByte(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid quoted-printable encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v0
.end method

.method public read([BII)I
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/web/MHTML$QuotedPrintableInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    if-nez v1, :cond_1

    return v3

    :cond_0
    add-int v3, p2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
