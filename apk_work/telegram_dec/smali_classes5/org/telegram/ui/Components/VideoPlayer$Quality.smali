.class public Lorg/telegram/ui/Components/VideoPlayer$Quality;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quality"
.end annotation


# instance fields
.field public height:I

.field public original:Z

.field public final uris:Ljava/util/ArrayList;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    iget-boolean v1, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    iget v1, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v1, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static filterByCodec(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static group(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;-><init>(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-nez v4, :cond_1

    iget v4, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v5, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    iget v5, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    if-nez v2, :cond_3

    iget-object v2, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;-><init>(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V

    goto :goto_1

    :cond_4
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug_loading_player: Quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "p ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    const-string v5, ""

    if-eqz v4, :cond_6

    const-string v4, " (source)"

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debug_loading_player: - video "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", codec="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", bitrate="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double v6, v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", doc#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    const-string v7, " (cached)"

    if-eqz v6, :cond_7

    move-object v6, v7

    goto :goto_5

    :cond_7
    move-object v6, v5

    :goto_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", manifest#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocId:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isManifestCached()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move-object v7, v5

    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string p0, "debug_loading_player: "

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getDownloadDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v6, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_3

    iget-object v6, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v1, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    move-wide v2, v1

    move-object v1, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v6, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_3

    iget-object v6, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v1, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    move-wide v2, v1

    move-object v1, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    return-object v0
.end method

.method public p()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit16 v1, v0, -0x870

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x37

    if-ge v1, v2, :cond_0

    const/16 v0, 0x870

    goto :goto_0

    :cond_0
    add-int/lit16 v1, v0, -0x5a0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_1

    const/16 v0, 0x5a0

    goto :goto_0

    :cond_1
    add-int/lit16 v1, v0, -0x438

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_2

    const/16 v0, 0x438

    goto :goto_0

    :cond_2
    add-int/lit16 v1, v0, -0x2d0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_3

    const/16 v0, 0x2d0

    goto :goto_0

    :cond_3
    add-int/lit16 v1, v0, -0x1e0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_4

    const/16 v0, 0x1e0

    goto :goto_0

    :cond_4
    add-int/lit16 v1, v0, -0x168

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_5

    const/16 v0, 0x168

    goto :goto_0

    :cond_5
    add-int/lit16 v1, v0, -0xf0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_6

    const/16 v0, 0xf0

    goto :goto_0

    :cond_6
    add-int/lit16 v1, v0, -0x90

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_7

    const/16 v0, 0x90

    :cond_7
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    const-string v1, ")"

    const-string v2, " ("

    const-string v3, ""

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->QualitySource:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v4, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    double-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->p()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "p"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->QualitySource:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
