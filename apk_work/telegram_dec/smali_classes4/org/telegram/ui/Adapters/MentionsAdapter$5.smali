.class Lorg/telegram/ui/Adapters/MentionsAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$favsStickers:Ljava/util/ArrayList;

.field final synthetic val$recentStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$favsStickers:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$recentStickers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIndex(Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$favsStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$favsStickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v4, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const p1, 0x1e8480

    add-int/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v3, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->val$recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    const v0, 0xf4240

    add-int/2addr p1, v0

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    check-cast p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->compare(Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;)I
    .locals 4

    .line 0
    iget-object v0, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v0

    iget-object v2, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->getIndex(Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;->getIndex(Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;)I

    move-result p2

    if-le p1, p2, :cond_0

    return v3

    :cond_0
    if-ge p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v1
.end method
