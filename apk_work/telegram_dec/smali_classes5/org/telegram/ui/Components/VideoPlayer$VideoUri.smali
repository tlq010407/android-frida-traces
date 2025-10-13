.class public Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoUri"
.end annotation


# instance fields
.field public bitrate:D

.field public codec:Ljava/lang/String;

.field public currentAccount:I

.field public docId:J

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public duration:D

.field public height:I

.field public m3u8uri:Landroid/net/Uri;

.field public manifestDocId:J

.field public manifestDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field public original:Z

.field public size:J

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUri(ILorg/telegram/tgnet/TLRPC$Document;I)Landroid/net/Uri;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&hash="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&dc="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&size="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&mime="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&rid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&name="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&reference="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tg://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static of(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;IZ)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 8

    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_codec:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, v4

    :goto_3
    iput p0, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    iput-object p1, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v5, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    invoke-static {p0, p1, p3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->getUri(ILorg/telegram/tgnet/TLRPC$Document;I)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    const/4 v5, 0x1

    if-eqz p2, :cond_5

    iput-object p2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocId:J

    invoke-static {p0, p2, p3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->getUri(ILorg/telegram/tgnet/TLRPC$Document;I)Landroid/net/Uri;

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    invoke-virtual {p3, p2, v4, v1, p4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    :goto_4
    iput-object p2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    goto :goto_5

    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    invoke-virtual {p3, p2, v4, v5, p4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_4

    :cond_5
    :goto_5
    iput-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide p2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    if-eqz v3, :cond_6

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-wide v6, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->duration:D

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v6

    iput-wide p2, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p2, p1, v4, v1, p4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_6
    iput-object p0, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    goto :goto_7

    :cond_7
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    invoke-virtual {p0, p1, v4, v5, p4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_6

    :cond_8
    :goto_7
    return-object v0
.end method


# virtual methods
.method public isCached()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManifestCached()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateCached(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v4, v3, v2, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v4, v3, v1, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isManifestCached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v4, v3, v2, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2, v3, v1, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
