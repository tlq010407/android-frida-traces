.class public final Lcom/google/android/exoplayer2/offline/FilteringManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# instance fields
.field private final parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

.field private final streamKeys:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object p1

    return-object p1
.end method
