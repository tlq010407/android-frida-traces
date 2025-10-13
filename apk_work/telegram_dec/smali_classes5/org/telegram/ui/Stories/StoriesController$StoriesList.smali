.class public Lorg/telegram/ui/Stories/StoriesController$StoriesList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoriesList"
.end annotation


# static fields
.field private static lastLoadTime:Ljava/util/HashMap;


# instance fields
.field private final cachedObjects:Ljava/util/SortedSet;

.field public final currentAccount:I

.field private final destroyRunnable:Ljava/lang/Runnable;

.field public final dialogId:J

.field public done:Z

.field private error:Z

.field public final groupedByDay:Ljava/util/HashMap;

.field private invalidateAfterPreload:Z

.field private final links:Ljava/util/ArrayList;

.field private final loadedObjects:Ljava/util/SortedSet;

.field private loading:Z

.field private maxLinkId:I

.field public final messageObjects:Ljava/util/ArrayList;

.field private final messageObjectsMap:Ljava/util/HashMap;

.field private final notify:Ljava/lang/Runnable;

.field public final pinnedIds:Ljava/util/ArrayList;

.field protected preloading:Z

.field private reqId:I

.field private saving:Z

.field public final seenStories:Ljava/util/HashSet;

.field private showPhotos:Z

.field private showVideos:Z

.field private final tempArr:Ljava/util/ArrayList;

.field protected toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private totalCount:I

.field public final type:I


# direct methods
.method public static synthetic $r8$lambda$1_q_sMZouFpxHKDFCxK9ssrUrvE(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$updatePinned$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2l6wqJDg0hm5XJyBR6QmFUBK3_A(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$61D73H49geQLI6NRV29e2Z1lT14(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$preloadCache$2(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$98-Bk2S3IP_pyfUG51_Nc0RoGuw(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ZILjava/util/List;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$10(ZILjava/util/List;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Brr_vBTuG31kTGjk8LtP8mCOKb4(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$invalidateCache$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$EEYV7JSFNwtezMt_voXJ5cYtEOk(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GZDI2qzjizaNkRRDD1sLzVmKLjw(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$saveCache$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$I2mzpsXgJt70KibSxQrcG7HZlLs()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$updatePinnedOrder$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$JA_fVTBVMIcY5AU-96-ne5zKVbs(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$new$1(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NqYwSC8mm8q7rYCJa4I1cMKS8AE(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$saveCache$8(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OvFE7x-vB7HKZttVO-pHveMD5vw(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$invalidateCache$6(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJ3kJ5LzpL6UzbdwoosGHx6lf3E()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$updatePinned$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$gg3fS5s-oI23BB07hvagAM63VVA(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$11(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p509TyV4xK3Z7-Fg5n4CU4UIas8(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$getDays$4(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pz9_-XhZakPvbeoowVNsqmPzqUQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$updatePinnedOrder$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPEPBtDOH3vTyqxEVLizo8pJVuE(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sltJ-ojAx9M9o1O0Vy1GEBXIgZM(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$preloadCache$3(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPVWlmQxR7Fe-aHAIEf-7YfYwlM(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$markAsRead$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private constructor <init>(IJILorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iput p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloadCache()V

    return-void
.end method

.method synthetic constructor <init>(IJILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$1;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static day(Lorg/telegram/messenger/MessageObject;)J
    .locals 6

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v2, v0

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    int-to-long v0, v1

    const-wide/16 v4, 0x64

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    int-to-long v0, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private filter(Lorg/telegram/messenger/MessageObject;ZZ)Z
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$getDays$4(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$invalidateCache$5()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    return-void
.end method

.method private synthetic lambda$invalidateCache$6(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM profile_stories WHERE dialog_id = %d AND type = %d"

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$10(ZILjava/util/List;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZILjava/util/List;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$load$11(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoriesList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "} loaded {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$800(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->pinned_to_top:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->users:Ljava/util/ArrayList;

    iget-object v4, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->count:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    add-int/2addr p2, v5

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-lt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez p1, :cond_4

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->firstLoadedId()I

    move-result p3

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadedId()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-lt v1, p3, :cond_3

    if-gt v1, p1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p3, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-eqz p1, :cond_8

    sget-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    :cond_7
    sget-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p3, v1, v5

    const/4 p2, 0x2

    aput-object v0, v1, p2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    return-void
.end method

.method private synthetic lambda$load$12()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of p3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$markAsRead$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$preloadCache$2(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "} preloadCache {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$800(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p4, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-boolean p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateCache()V

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    invoke-virtual {p3, p5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p3, p5, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p5, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    add-int/2addr p3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p0, p4, p2

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$preloadCache$3(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "SELECT data, seen, pin FROM profile_stories WHERE dialog_id = %d AND type = %d ORDER BY story_id DESC"

    move-object/from16 v17, v13

    iget-wide v12, v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v12, v3, v0

    const/4 v12, 0x1

    aput-object v13, v3, v12

    invoke-static {v14, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v12, v0, [Ljava/lang/Object;

    move-object/from16 v13, v17

    invoke-virtual {v13, v3, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :goto_0
    :try_start_1
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_c

    :try_start_2
    invoke-virtual {v12, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_b

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v14

    invoke-static {v3, v14, v13}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v14

    move-object v15, v3

    iget-wide v2, v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iput-wide v2, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget v2, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v2, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {v2, v3, v14}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v16, :cond_2

    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    instance-of v0, v13, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v0, :cond_0

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_2
    move-object v13, v10

    move-object v6, v11

    goto/16 :goto_c

    :cond_0
    instance-of v0, v13, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v0, :cond_1

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_4
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-wide/16 v18, 0x0

    if-eqz v0, :cond_4

    :try_start_5
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    cmp-long v3, v0, v18

    if-ltz v3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_2

    :cond_3
    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v6

    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    const/4 v0, 0x0

    :goto_5
    :try_start_6
    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    if-eqz v1, :cond_5

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v13, v10

    move-object/from16 v20, v11

    :try_start_7
    iget-wide v10, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->channel_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v1, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    :goto_7
    move-object/from16 v1, p1

    :goto_8
    move-object/from16 v6, v20

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object v13, v10

    move-object/from16 v20, v11

    goto :goto_7

    :cond_5
    move-object v13, v10

    move-object/from16 v20, v11

    goto :goto_6

    :goto_9
    add-int/2addr v0, v1

    move-object v10, v13

    move-object/from16 v11, v20

    goto :goto_5

    :cond_6
    move-object v13, v10

    move-object/from16 v20, v11

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    cmp-long v3, v0, v18

    if-ltz v3, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v5

    goto :goto_a

    :cond_7
    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v6

    :goto_a
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    if-ne v1, v0, :cond_9

    iget v0, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v10, 0x0

    invoke-static {v1, v2, v10}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iget v2, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    move-object/from16 v1, p1

    move-object v10, v13

    move-object/from16 v11, v20

    const/4 v0, 0x0

    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_b
    move-object v13, v10

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object v10, v13

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    move-object v13, v10

    move-object/from16 v20, v11

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v0, :cond_d

    move-object/from16 v1, p1

    :try_start_8
    invoke-virtual {v1, v5, v13}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/HashSet;Ljava/util/ArrayList;)V

    goto :goto_b

    :catchall_4
    move-exception v0

    goto/16 :goto_8

    :cond_d
    move-object/from16 v1, p1

    :goto_b
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, ","

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v6, v20

    :try_start_9
    invoke-virtual {v1, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_c

    :cond_e
    move-object/from16 v6, v20

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v13, v10

    move-object v6, v11

    const/4 v12, 0x0

    :goto_c
    :try_start_a
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v12, :cond_f

    :goto_d
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_f
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda13;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v5, v13

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_7
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_10
    goto :goto_f

    :goto_e
    throw v1

    :goto_f
    goto :goto_e
.end method

.method private synthetic lambda$saveCache$7()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    return-void
.end method

.method private synthetic lambda$saveCache$8(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StoriesList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "} saveCache {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$800(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "DELETE FROM profile_stories WHERE dialog_id = %d AND type = %d"

    iget-wide v7, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v0

    aput-object v8, v9, v2

    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v5, "REPLACE INTO profile_stories VALUES(?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v4, v5}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v3, v2, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v3, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v7, 0x4

    invoke-virtual {v3, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v3, v7, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v2

    const/4 v6, 0x6

    invoke-virtual {v3, v6, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :goto_3
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static synthetic lambda$updatePinned$14()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$updatePinned$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda16;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$updatePinnedOrder$16()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$updatePinnedOrder$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/TreeSet;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeObject(IZ)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iput-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    new-instance p2, Lorg/telegram/messenger/MessageObject;

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {p2, v0, p1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    return-object p2
.end method


# virtual methods
.method protected canLoad()Z
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    const/4 v1, 0x2

    aput-object v4, v5, v1

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    sget-object v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public equal(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    if-eq p1, p2, :cond_5

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-ne v2, v3, :cond_4

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    return v0
.end method

.method public fill(Ljava/util/ArrayList;ZZ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ge v4, v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-ge v3, v4, :cond_a

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    if-eq v2, v1, :cond_9

    if-ge v4, v2, :cond_6

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v3, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public fill(Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Ljava/util/ArrayList;ZZ)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public findMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method public firstLoadedId()I
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method public getCount()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getDays()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getLoadedCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected invalidateCache()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isFull()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->canLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPinned(I)Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lastLoadedId()I
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method public link()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return v0
.end method

.method public load(Ljava/util/List;)Z
    .locals 4

    .line 0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public load(ZI)Z
    .locals 1

    .line 0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public load(ZILjava/util/List;)Z
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->canLoad()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ZILjava/util/List;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return v1

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-nez p1, :cond_3

    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;-><init>()V

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadedId()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;->offset_id:I

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPinnedStories;->limit:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;-><init>()V

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p3, -0x1

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;-><init>()V

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadedId()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;->offset_id:I

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesArchive;->limit:I

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StoriesList "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "} load"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;I)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    return p2

    :cond_5
    :goto_1
    return v1
.end method

.method protected markAsRead(I)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->seenStories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesReadUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected preloadCache()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public reload()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reqId:I

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateCache()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    return-void
.end method

.method protected resetCanLoad()V
    .locals 6

    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected saveCache()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, v0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Ljava/util/ArrayList;ZZ)V

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1, v0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPhotos()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    return v0
.end method

.method public showVideos()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    return v0
.end method

.method public unlink(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public updateDeletedStories(Ljava/util/List;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "} updateDeletedStories {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$700(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    iget v5, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    iget v5, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_6
    return-void
.end method

.method public updateFilters(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    return-void
.end method

.method public updatePinned(Ljava/util/ArrayList;Z)Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    if-eqz p2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storiesPinnedToTopCountMax:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    return v2

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p2, v1, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_7

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v1, v4, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    new-instance p2, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;-><init>()V

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->id:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return p1
.end method

.method public updatePinnedOrder(Ljava/util/ArrayList;Z)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storiesPinnedToTopCountMax:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    if-eqz p2, :cond_4

    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;-><init>()V

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->id:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_togglePinnedToTop;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method public updateStories(Ljava/util/List;Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "} updateStories {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$700(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    iget v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    iget v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-ne v6, v4, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    :goto_3
    instance-of v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v7, :cond_5

    const/4 v6, 0x0

    :cond_5
    const/4 v7, 0x0

    if-eq v5, v6, :cond_9

    const/4 v2, -0x1

    if-nez v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StoriesList remove story "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-eq v3, v2, :cond_8

    add-int/lit8 v3, v3, -0x1

    :goto_4
    iput v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    goto :goto_5

    :cond_6
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StoriesList put story "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-eq v3, v2, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StoriesList cannot put story "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> reload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->reload()V

    :cond_8
    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    iget v6, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_a

    if-nez p2, :cond_a

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p0, v5, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->equal(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StoriesList update story "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    iget v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_d
    return-void
.end method

.method public updateStoryViews(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_2

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_4
    :goto_2
    return-void
.end method
