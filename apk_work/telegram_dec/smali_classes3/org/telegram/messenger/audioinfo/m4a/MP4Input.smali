.class public final Lorg/telegram/messenger/audioinfo/m4a/MP4Input;
.super Lorg/telegram/messenger/audioinfo/m4a/MP4Box;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;-><init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;Lorg/telegram/messenger/audioinfo/m4a/MP4Box;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mp4[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
