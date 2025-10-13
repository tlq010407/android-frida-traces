.class public abstract Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

.field protected final data:Ljava/io/DataInput;

.field private final input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

.field private final parent:Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->parent:Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    iput-object p3, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->type:Ljava/lang/String;

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    return-void
.end method


# virtual methods
.method protected getChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    return-object v0
.end method

.method public getInput()Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    return-object v0
.end method

.method public getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->parent:Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->type:Ljava/lang/String;

    return-object v0
.end method

.method public nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 15

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    invoke-interface {v2, v1}, Ljava/io/DataInput;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO8859_1"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->data:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v5

    const-wide/16 v7, 0x10

    sub-long v7, v5, v7

    const-wide/16 v5, 0x10

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    iget-object v10, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->input:Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    add-int/lit8 v0, v0, -0x8

    int-to-long v13, v0

    const-wide/16 v11, 0x8

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    invoke-direct {v1, v0, p0, v2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;-><init>(Lorg/telegram/messenger/audioinfo/util/RangeInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->child:Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    return-object v1
.end method

.method public nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 4

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atom type mismatch, expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
