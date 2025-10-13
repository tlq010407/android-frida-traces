.class public Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewsModel"
.end annotation


# instance fields
.field animateDateForUsers:Ljava/util/HashSet;

.field currentAccount:I

.field private dialogId:J

.field hasNext:Z

.field initial:Z

.field public final isChannel:Z

.field isExpiredViews:Z

.field listeners:Ljava/util/ArrayList;

.field loading:Z

.field offset:Ljava/lang/String;

.field originalViews:Ljava/util/ArrayList;

.field reactions:Ljava/util/ArrayList;

.field reqId:I

.field showReactionOnly:Z

.field state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

.field storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public totalCount:I

.field useLocalFilters:Z

.field views:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$-0vPhcFDsVZ7x0rvXatDJWkao10(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$0([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-xYa9qoxbCnqPa1cWR01KJrOMkM(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$3([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_E22XikXnCLEG6gRbPOU5YYRs4Y(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$1([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keJViVULdsq7T-mm19unD9O4elA(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$applyLocalFilter$4(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lnNFYNV5p01PbZEf9Z1_ndbo6JY(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$2([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-gez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    iput-wide p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->dialogId:J

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    :goto_1
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    const/16 p3, 0xc8

    if-ge p2, p3, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    :cond_2
    invoke-static {p4}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz p2, :cond_4

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz p2, :cond_4

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-lez p2, :cond_4

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->showReactionOnly:Z

    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-nez p2, :cond_6

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz p2, :cond_6

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :goto_3
    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;-><init>()V

    iput-wide v0, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    iput v3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->date:I

    iget-object p5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private applyLocalFilter()V
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    iget v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    iget-wide v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v7, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_4

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v7, :cond_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_6

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    return-void
.end method

.method private static synthetic lambda$applyLocalFilter$4(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->date:I

    neg-int p0, p0

    return p0
.end method

.method private synthetic lambda$loadNext$0([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v0, 0x0

    aget p1, p1, v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    const-string v2, "SelfStoryViewsPage reactions "

    if-eq p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " localId != reqId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-eqz p2, :cond_7

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->users:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p1, p3, v1, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    :goto_1
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez p3, :cond_5

    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyReactionsList;->count:I

    if-eq p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eqz v3, :cond_9

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "MSG_ID_INVALID"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " response  totalItems "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has next "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$loadNext$1([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadNext$2([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v0, 0x0

    aget p1, p1, v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    const-string v2, "SelfStoryViewsPage "

    if-eq p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " localId != reqId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-eqz p2, :cond_a

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->applyStoryViewsBlocked(Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;)V

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->users:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p1, p3, v1, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    iget-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->originalViews:Ljava/util/ArrayList;

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->applyLocalFilter()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    :goto_2
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez p3, :cond_6

    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_6
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->count:I

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-le p1, v1, :cond_8

    iget-object p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    :goto_3
    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p1, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget p3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->count:I

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViewsList;->reactions_count:I

    if-eq v1, p2, :cond_9

    iput p2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    goto :goto_5

    :cond_9
    move v3, p1

    :goto_5
    if-eqz v3, :cond_c

    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    if-eqz p3, :cond_b

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "MSG_ID_INVALID"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    :cond_c
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " response  totalItems "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has next "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_e
    return-void
.end method

.method private synthetic lambda$loadNext$3([ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public loadNext()V
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    const-string v1, " offset="

    const/16 v2, 0x64

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, " "

    const/16 v6, 0x14

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v8, v8, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    iput-boolean v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->forwards_first:Z

    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->id:I

    iget v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->dialogId:J

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v6, :cond_2

    :cond_1
    const/16 v2, 0x14

    :cond_2
    iput v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->limit:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->offset:Ljava/lang/String;

    if-nez v2, :cond_3

    iput-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->offset:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->flags:I

    :goto_0
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    new-array v2, v7, [I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SelfStoryViewsPage reactions load next "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_getStoryReactionsList;->offset:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[I)V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    aput v0, v2, v3

    goto/16 :goto_2

    :cond_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->id:I

    iget v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->dialogId:J

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    if-eqz v8, :cond_5

    iput-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->q:Ljava/lang/String;

    iput-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->just_contacts:Z

    iput-boolean v7, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->reactions_first:Z

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v8, v8, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    iput-object v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->q:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->flags:I

    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    iput-boolean v9, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->just_contacts:Z

    iget-boolean v8, v8, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    iput-boolean v8, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->reactions_first:Z

    :goto_1
    iget-boolean v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v6, :cond_8

    :cond_7
    const/16 v2, 0x14

    :cond_8
    iput v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->limit:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->offset:Ljava/lang/String;

    if-nez v2, :cond_9

    iput-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->offset:Ljava/lang/String;

    :cond_9
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    new-array v2, v7, [I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SelfStoryViewsPage load next "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->offset:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " q"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->q:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->just_contacts:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoryViewsList;->reactions_first:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;[I)V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    aput v0, v2, v3

    :cond_a
    :goto_2
    return-void
.end method

.method public release()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    return-void
.end method

.method public reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->set(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    :cond_0
    const/4 p2, 0x1

    if-nez p3, :cond_1

    iput-boolean p2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->set(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;)V

    iget-boolean p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isChannel:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->useLocalFilters:Z

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->applyLocalFilter()V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offset:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_4
    return-void
.end method

.method public removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
