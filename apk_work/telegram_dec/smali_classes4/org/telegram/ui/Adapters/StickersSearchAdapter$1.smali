.class Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/StickersSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;


# direct methods
.method public static synthetic $r8$lambda$IgbOXPl9pBkhFONx2dabZo89KMk(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->lambda$run$3(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MI08-X5-zQ6VvrvTXuaRphGzdoI(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->lambda$run$4(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PXolxkPj98siI4-G_UbdSy4e-xE(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->lambda$run$1(Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6nzq7FZ5hRb6hI-yb4E-JyBiC0(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;ILjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->lambda$run$0(ILjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHZ01wZyxMRT1HEFrFjs9y1Zg2E(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->lambda$run$2(Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->cleared:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->cleared:Z

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$100(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$300(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$500(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private synthetic lambda$run$0(ILjava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    iget-object p4, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$800(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result p4

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$100(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$run$1(Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;->q:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->onSearchStop()V

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$1002(Lorg/telegram/ui/Adapters/StickersSearchAdapter;I)I

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->setAdapterVisible(Z)V

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$300(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;->sets:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$2(Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;

    if-eqz p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$3(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$1102(Lorg/telegram/ui/Adapters/StickersSearchAdapter;I)I

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$100(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$run$4(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda3;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->onSearchStart()V

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    iput-boolean v1, v3, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->cleared:Z

    invoke-static {v3}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$804(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iget-object v6, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xe

    if-gt v7, v8, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    add-int/lit8 v10, v8, -0x1

    if-ge v9, v10, :cond_3

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xd83c

    if-ne v10, v11, :cond_1

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v7, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const v12, 0xdffb

    if-lt v11, v12, :cond_1

    invoke-interface {v7, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xdfff

    if-le v10, v11, :cond_2

    :cond_1
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x200d

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v7, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x2640

    if-eq v11, v12, :cond_2

    invoke-interface {v7, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x2642

    if-ne v10, v11, :cond_3

    :cond_2
    invoke-interface {v7, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v11, v9, 0x2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v7, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v11, v0, [Ljava/lang/CharSequence;

    aput-object v10, v11, v1

    aput-object v7, v11, v2

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v8, v8, -0x2

    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xfe0f

    if-ne v10, v11, :cond_4

    invoke-interface {v7, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v7, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v11, v0, [Ljava/lang/CharSequence;

    aput-object v10, v11, v1

    aput-object v7, v11, v2

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v9, v2

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/2addr v8, v2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$100(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object v7

    invoke-interface {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->getLastSearchKeyboardLanguage()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->setLastSearchKeyboardLanguage([Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->getLastSearchKeyboardLanguage()[Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, v3, v6}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;ILjava/util/HashMap;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_5
    const/16 v7, 0x20

    if-ge v6, v3, :cond_f

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v10}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_c

    if-eqz v9, :cond_b

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_e

    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$500(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_6
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v9, :cond_e

    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v10}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_e

    if-eqz v9, :cond_d

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    sub-int/2addr v9, v2

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_e

    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v7

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_e
    :goto_7
    add-int/2addr v6, v2

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_8
    if-ge v1, v3, :cond_14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_11

    if-eqz v8, :cond_10

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_13

    :cond_10
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    iget-object v9, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$500(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v9, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v9}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_13

    if-eqz v8, :cond_12

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    sub-int/2addr v8, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_13

    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->clear()V

    iget-object v8, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_9
    add-int/2addr v1, v2

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$Delegate;->setAdapterVisible(Z)V

    :cond_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;->q:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$1002(Lorg/telegram/ui/Adapters/StickersSearchAdapter;I)I

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/StickersSearchAdapter;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v4, v5}, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->access$1102(Lorg/telegram/ui/Adapters/StickersSearchAdapter;I)I

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method
