.class public Lorg/telegram/messenger/HashtagSearchController$SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HashtagSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResult"
.end annotation


# instance fields
.field public cancel:Ljava/lang/Runnable;

.field public count:I

.field private final currentAccount:I

.field public endReached:Z

.field public final generatedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastGeneratedId:I

.field public lastHashtag:Ljava/lang/String;

.field public lastOffsetId:I

.field public lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public lastOffsetRate:I

.field public loading:Z

.field public final messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public reqId:I

.field public selectedIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->generatedIds:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    const v0, 0x7fffffff

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastGeneratedId:I

    iput p1, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->currentAccount:I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->cancel:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->cancel:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->generatedIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetRate:I

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetId:I

    iput-object v1, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    const v2, 0x7ffffff5

    iput v2, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastGeneratedId:I

    iput-object v1, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastHashtag:Ljava/lang/String;

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    iput v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    iput-boolean v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    return-void
.end method

.method getMask()I
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    if-lez v0, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    return v2
.end method
