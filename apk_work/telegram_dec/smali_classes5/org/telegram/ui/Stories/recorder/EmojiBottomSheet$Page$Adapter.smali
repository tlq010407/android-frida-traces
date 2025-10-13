.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private activeQuery:Ljava/lang/String;

.field private final allEmojis:Ljava/util/HashMap;

.field private final allStickerSets:Ljava/util/ArrayList;

.field private final documentIds:Ljava/util/ArrayList;

.field private final documents:Ljava/util/ArrayList;

.field private faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private includeNotFound:Z

.field private itemsCount:I

.field private lastAllSetsCount:I

.field private lastLang:[Ljava/lang/String;

.field private final packs:Ljava/util/ArrayList;

.field private final packsBySet:Ljava/util/HashMap;

.field private final positionToSection:Landroid/util/SparseIntArray;

.field private query:Ljava/lang/String;

.field private recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private searchDocumentIds:Ljava/util/HashSet;

.field private searchId:I

.field private final searchRunnable:Ljava/lang/Runnable;

.field private final setByDocumentId:Ljava/util/HashMap;

.field private final staticEmojiInput:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

.field private final stickerSets:Ljava/util/ArrayList;

.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;


# direct methods
.method public static synthetic $r8$lambda$3-02WwHHZDwgj5r6dYoLAP_dOoE(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$onCreateViewHolder$4(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QKkdsEhFddj8PexysvooTs4lcBI(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$new$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TS0i4JBSpAq0oNcc2BzP7AiF29Q(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$jiaHJzsw3THTTCXfmN9EkUeT-uc(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$new$2(Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYVeutM0zYMOKkPrDtRiMoOcZHA(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$new$0(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->setByDocumentId:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->staticEmojiInput:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    const-string v0, "StaticEmoji"

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->setByDocumentId:Ljava/util/HashMap;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {p2, p1, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaDataController$KeywordResult;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    const-string v2, "animated_"

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v3, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    goto/16 :goto_b

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object p1

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v5, v4, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v4, v4, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_11

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v4, v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v4, :cond_10

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v6, :cond_c

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_8

    :cond_c
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    goto :goto_8

    :cond_d
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_f

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    :goto_8
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v8, v3, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v7, v0

    iput v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_10
    :goto_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_11
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_14

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v3, :cond_12

    goto :goto_d

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_14
    :goto_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_e

    :cond_16
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    if-eqz p1, :cond_17

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_17
    if-nez p1, :cond_18

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {p1, p4, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    const-string v2, "premium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastLang:[Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastLang:[Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;)V

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZZLjava/lang/Integer;Z)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$4(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V

    return-void
.end method

.method private updateItems(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->setByDocumentId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-ne v6, v3, :cond_6

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->hasWidgets()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->widgets:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_2

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_4

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->plus:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v6, :cond_7

    const/4 v6, 0x5

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v7, :cond_8

    const-string v7, "recent"

    goto :goto_2

    :cond_8
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v7, :cond_9

    const-string v7, "fav"

    goto :goto_2

    :cond_9
    move-object v7, v6

    :goto_2
    const/4 v8, 0x0

    :goto_3
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->setByDocumentId:Ljava/util/HashMap;

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    new-instance v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    iput-boolean v2, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_b

    sget v8, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    :goto_4
    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    goto :goto_5

    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_c

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    goto :goto_4

    :cond_c
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v6, :cond_1e

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1b

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1b

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v9, :cond_e

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v8

    invoke-virtual {v9, v8, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v8

    if-nez v8, :cond_15

    goto/16 :goto_d

    :cond_e
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v9, :cond_1a

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    if-nez v8, :cond_14

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    :goto_7
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_12

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v11, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v11, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_11

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v14, v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_10

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object v8, v9

    :cond_15
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_16

    goto/16 :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_17

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v9, v11

    if-nez v3, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v2, 0x0

    :goto_c
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->setByDocumentId:Ljava/util/HashMap;

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_19
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_d
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1d

    :try_start_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "staticemoji"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    nop

    :goto_f
    if-eqz v3, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    :goto_10
    if-nez v3, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->staticEmojiInput:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$5402(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Z)Z

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_23

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_11
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_22

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v2, 0x0

    :goto_12
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_21

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_20

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    :cond_20
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_21
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    :cond_23
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ltz v0, :cond_2

    return v1

    :cond_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->widgets:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-ltz p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, ""

    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    :goto_2
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;III)V

    goto/16 :goto_6

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-lt p2, v0, :cond_8

    move-object v0, v3

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->plus:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v0, v4, :cond_9

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I

    move-result v0

    const v3, 0x3df5c28f    # 0.12f

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_add_sticker:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v4, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCenter(Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lt p2, v4, :cond_a

    move-wide v7, v5

    goto :goto_5

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_5
    if-nez v0, :cond_b

    cmp-long p2, v7, v5

    if-nez p2, :cond_b

    return-void

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez p2, :cond_f

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-eqz v0, :cond_d

    if-ne p2, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_6

    :cond_d
    if-ne p2, v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {p1, v7, v8, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmojiId(JZ)V

    goto :goto_6

    :cond_f
    if-ne p2, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_6

    :cond_11
    const/4 p2, 0x3

    if-ne v0, p2, :cond_12

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;->update(I)V

    :cond_12
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object p1, p2

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    new-instance p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->setOnButtonClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
