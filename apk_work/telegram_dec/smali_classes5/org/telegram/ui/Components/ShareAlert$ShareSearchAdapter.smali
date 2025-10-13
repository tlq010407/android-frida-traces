.class public Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareSearchAdapter"
.end annotation


# instance fields
.field categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

.field categoryListView:Landroidx/recyclerview/widget/RecyclerView;

.field private context:Landroid/content/Context;

.field firstEmptyViewCell:I

.field hintsCell:I

.field internalDialogsIsSearching:Z

.field itemsCount:I

.field lastFilledItem:I

.field private lastGlobalSearchId:I

.field lastItemCont:I

.field private lastLocalSearchId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field recentDialogsStartRow:I

.field resentTitleCell:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;

.field searchResultsStartRow:I

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchRunnable2:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$0cxqHqtisHdwDC_zPNU6q9eFmKQ(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogs$4(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHKfdo-1KUm5Zj03fXogqdkP1n0(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogs$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N2leCj1fsSDLiXy7aIlYyot2xnY(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogsInternal$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OM-TumkQWqmSerVEXR5Az7T29lI(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$onCreateViewHolder$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ryGJYuyvUmdNaKf2jinZWkvtsYg(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$updateSearchResults$2(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wFSR2UrlZTa-dZk4YqMnzcdAzU4(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogsInternal$1(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResultsStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ZLorg/telegram/ui/Components/ShareAlert;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method static synthetic access$12502(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastGlobalSearchId:I

    return p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastLocalSearchId:I

    return p0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    return p0
.end method

.method private synthetic lambda$onCreateViewHolder$5(Landroid/view/View;I)V
    .locals 6

    check-cast p1, Lorg/telegram/ui/Cells/HintDialogCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    :goto_0
    neg-long v1, v1

    goto :goto_1

    :cond_1
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HintDialogCell;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2, p1, v1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$14700(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;J)V

    return-void

    :cond_3
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v3, 0x0

    invoke-static {p2, v3, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14800(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    const/4 v0, 0x1

    if-ltz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/HintDialogCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$3(ILjava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v2, p2

    move v12, p1

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$4(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$searchDialogsInternal$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    iget p1, p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$searchDialogsInternal$1(Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_0

    iput v6, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1a

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const/4 v5, 0x0

    :cond_2
    if-eqz v5, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    add-int/2addr v7, v3

    new-array v9, v7, [Ljava/lang/String;

    aput-object v4, v9, v2

    if-eqz v5, :cond_4

    aput-object v5, v9, v3

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    iget-object v11, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ShareAlert;->access$15100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    new-array v13, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    invoke-direct {v14}, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;-><init>()V

    invoke-virtual {v11, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    iput v15, v14, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    invoke-virtual {v10, v12, v13, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v13, v4

    goto :goto_2

    :cond_6
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v14

    if-eqz v14, :cond_5

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v13, v5

    :goto_2
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ";;;"

    const-string v13, ","

    const-string v14, "@"

    const-string v8, " "

    if-nez v11, :cond_14

    :try_start_1
    iget-object v11, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ShareAlert;->access$15200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    invoke-static {v13, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v4, v15, v2

    invoke-static {v0, v6, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v6, 0x0

    :cond_8
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_9

    const/4 v3, 0x3

    add-int/2addr v15, v3

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    const/4 v15, 0x0

    :goto_5
    if-ge v2, v7, :cond_12

    move/from16 v18, v15

    aget-object v15, v9, v2

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v19, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    if-eqz v6, :cond_a

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x2

    goto :goto_7

    :cond_b
    move/from16 v12, v18

    goto :goto_7

    :cond_c
    move-object/from16 v19, v12

    :cond_d
    :goto_6
    const/4 v12, 0x1

    :goto_7
    if-eqz v12, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    invoke-static {v2, v6, v3}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget-wide v2, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_e

    move-object/from16 v20, v10

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    iput v10, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_8

    :cond_e
    move-object/from16 v20, v10

    const/4 v11, 0x1

    :goto_8
    if-ne v12, v11, :cond_f

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v10, v15}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_9

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v3, v11, v10}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_9
    iput-object v3, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    iput-object v6, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v2, 0x1

    add-int/2addr v4, v2

    :goto_a
    move-object/from16 v12, v19

    move-object/from16 v10, v20

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v20, v10

    goto :goto_a

    :cond_11
    move-object/from16 v18, v3

    move-object/from16 v20, v10

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move v15, v12

    move-object/from16 v3, v18

    move-object/from16 v12, v19

    goto/16 :goto_5

    :cond_12
    move-object/from16 v20, v10

    move-object/from16 v19, v12

    goto :goto_a

    :cond_13
    move-object/from16 v20, v10

    move-object/from16 v19, v12

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_b

    :cond_14
    move-object/from16 v20, v10

    move-object/from16 v19, v12

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$15300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT data, name FROM chats WHERE uid IN(%s)"

    invoke-static {v13, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v10, v6

    invoke-static {v2, v3, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    :goto_c
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x0

    :cond_15
    const/4 v5, 0x0

    :goto_d
    if-ge v5, v7, :cond_19

    aget-object v6, v9, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    if-eqz v2, :cond_17

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_16
    const/4 v2, 0x0

    goto :goto_e

    :cond_17
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v3, v5, v2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v5, :cond_19

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_1a

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v2, :cond_18

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_1a

    :cond_18
    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_19

    goto :goto_f

    :cond_19
    move-object/from16 v10, v20

    goto :goto_10

    :cond_1a
    :goto_f
    iget-wide v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    move-object/from16 v10, v20

    invoke-virtual {v10, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    iput-object v5, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const/4 v2, 0x1

    add-int/2addr v4, v2

    :goto_10
    move-object/from16 v20, v10

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v10, v20

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_11

    :cond_1c
    move-object/from16 v10, v20

    :goto_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    invoke-virtual {v10, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_12

    :cond_1e
    iget-object v2, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$15400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    :goto_13
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v4, v19

    const/4 v11, 0x0

    goto :goto_14

    :cond_20
    move-object/from16 v4, v19

    :goto_14
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v12, -0x1

    const/4 v13, 0x3

    if-eq v5, v12, :cond_21

    add-int/2addr v5, v13

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_15

    :cond_21
    const/4 v5, 0x0

    :goto_15
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_16
    if-ge v15, v7, :cond_27

    aget-object v6, v9, v15

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_24

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_24

    if-eqz v11, :cond_22

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_24

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_22

    goto :goto_17

    :cond_22
    if-eqz v5, :cond_23

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    const/4 v12, 0x2

    goto :goto_18

    :cond_23
    move/from16 v12, v16

    goto :goto_18

    :cond_24
    :goto_17
    const/4 v12, 0x1

    :goto_18
    if-eqz v12, :cond_28

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v3, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v3, v5, v13}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    invoke-direct {v3}, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;-><init>()V

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v11, :cond_25

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v11, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_25
    iget-object v11, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    move v13, v7

    move-object/from16 v18, v8

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v7, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-object v5, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    const/4 v7, 0x1

    if-ne v12, v7, :cond_26

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v7, 0x0

    goto :goto_19

    :cond_26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_19
    iput-object v5, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v4

    move v7, v13

    move-object/from16 v8, v18

    goto/16 :goto_13

    :cond_27
    move-object/from16 v19, v4

    goto/16 :goto_13

    :cond_28
    move v13, v7

    move-object/from16 v18, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    add-int/2addr v15, v6

    move/from16 v16, v12

    move v7, v13

    const/4 v6, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x3

    goto/16 :goto_16

    :cond_29
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1b

    :goto_1a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1b
    return-void
.end method

.method private synthetic lambda$updateSearchResults$2(ILjava/util/ArrayList;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastLocalSearchId:I

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastGlobalSearchId:I

    if-eq v1, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$13102(Lorg/telegram/ui/Components/ShareAlert;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$14900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_1

    :cond_3
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$15000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$13102(Lorg/telegram/ui/Components/ShareAlert;I)I

    :cond_8
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p2

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    if-nez p2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;Z)V

    return-void
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;I)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    if-ltz v0, :cond_3

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$9100(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$9100(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_0
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    goto :goto_0

    :goto_1
    return-object v0

    :cond_2
    :goto_2
    return-object v1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_4

    return-object v1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_3
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_4

    :cond_6
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_7

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    goto :goto_3

    :goto_4
    return-object v0

    :cond_7
    return-object v1
.end method

.method public getItemCount()I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResultsStartRow:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$9100(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$9100(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v1

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResultsStartRow:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method public getSpanSize(II)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemViewType(I)I

    move-result p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne v2, v4, :cond_12

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_d

    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_b

    iget v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    const-wide/16 v10, 0x0

    if-ltz v3, :cond_6

    if-lt v2, v3, :cond_6

    sub-int v3, v2, v3

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ShareAlert;->access$9100(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v13, :cond_2

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v13, :cond_3

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_3
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v13, :cond_4

    move-object v12, v3

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ShareAlert;->access$14300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v13

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-wide v10, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v13}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eq v14, v7, :cond_5

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ShareAlert;->access$14400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v6, v15, v8}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v14

    invoke-virtual {v7, v6, v14, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v18, v3

    move-object v6, v7

    :goto_2
    move-object/from16 v19, v12

    goto :goto_3

    :cond_5
    move-object/from16 v18, v3

    goto :goto_2

    :cond_6
    move-object/from16 v18, v6

    goto :goto_2

    :goto_3
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v5, :cond_8

    move-object/from16 v17, v3

    check-cast v17, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    goto :goto_6

    :cond_8
    instance-of v1, v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v1, :cond_a

    check-cast v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v10, v11}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v3, v10, v11, v8, v6}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    :cond_a
    :goto_6
    return-void

    :cond_b
    add-int/2addr v2, v7

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object v5, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object v3, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object v13, v3

    :goto_7
    move-object v11, v6

    goto :goto_a

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_d

    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_d
    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_8
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-eq v13, v7, :cond_e

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ShareAlert;->access$14500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v13

    invoke-virtual {v7, v3, v13, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v13, v7

    :goto_9
    move-wide v7, v10

    goto :goto_7

    :cond_e
    move-object v13, v3

    goto :goto_9

    :goto_a
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v5, :cond_10

    move-object v10, v3

    check-cast v10, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_f

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    goto :goto_d

    :cond_10
    instance-of v1, v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v1, :cond_12

    check-cast v3, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v7, v8}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_11

    goto :goto_c

    :cond_11
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v3, v7, v8, v9, v13}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    :cond_12
    :goto_d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const/4 p1, 0x1

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    const/4 v2, -0x1

    if-eq p2, v0, :cond_1

    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$8300(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$8400(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42da0000    # 109.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42600000    # 56.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$6;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$6;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14200(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget p1, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_1

    :cond_5
    new-instance p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$13300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->useCustomPaints()Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlock(Z)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object p2

    :goto_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13102(Lorg/telegram/ui/Components/ShareAlert;I)I

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;Z)V

    return-void
.end method
