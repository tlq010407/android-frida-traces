.class Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/PaintTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameRecord"
.end annotation


# instance fields
.field final encodingID:I

.field final languageID:I

.field final nameID:I

.field final nameLength:I

.field final platformID:I

.field final stringOffset:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->platformID:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->encodingID:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->languageID:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameID:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameLength:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->stringOffset:I

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->stringOffset:I

    add-int/2addr p2, v0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget p2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameLength:I

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    iget p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->encodingID:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
