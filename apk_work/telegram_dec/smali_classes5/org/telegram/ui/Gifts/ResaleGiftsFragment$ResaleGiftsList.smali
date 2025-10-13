.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stars/StarsController$IGiftsList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResaleGiftsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;
    }
.end annotation


# instance fields
.field private final account:I

.field private attributes_hash:J

.field public final backdropAttributes:Ljava/util/ArrayList;

.field public final backdropAttributesCounter:Ljava/util/HashMap;

.field private endReached:Z

.field private final gift_id:J

.field public final gifts:Ljava/util/ArrayList;

.field private last_offset:Ljava/lang/String;

.field private loading:Z

.field public final modelAttributes:Ljava/util/ArrayList;

.field public final modelAttributesCounter:Ljava/util/HashMap;

.field public final notSelectedBackdropAttributes:Ljava/util/HashSet;

.field public final notSelectedModelAttributes:Ljava/util/HashSet;

.field public final notSelectedPatternAttributes:Ljava/util/HashSet;

.field private final onUpdate:Lorg/telegram/messenger/Utilities$Callback;

.field public final patternAttributes:Ljava/util/ArrayList;

.field public final patternAttributesCounter:Ljava/util/HashMap;

.field private reqId:I

.field private sorting:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

.field private totalCount:I


# direct methods
.method public static synthetic $r8$lambda$0TZbi1pCp0YNDkJvhLiO9e1CT_I(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->lambda$load$1(Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlMuE_FAjfHMVEwd0kYQzAI6Y5o(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->lambda$load$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;)V

    return-void
.end method

.method public constructor <init>(IJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    sget-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->sorting:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->endReached:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reqId:I

    iput p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->account:I

    iput-wide p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gift_id:J

    iput-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->onUpdate:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->endReached:Z

    return p0
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;)V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reqId:I

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;

    iget v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->count:I

    iput v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->totalCount:I

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->offset:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->totalCount:I

    if-ge v1, v3, :cond_4

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->next_offset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->endReached:Z

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->next_offset:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->last_offset:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->attributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->attributes:Ljava/util/ArrayList;

    const-class v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->attributes:Ljava/util/ArrayList;

    const-class v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->attributes:Ljava/util/ArrayList;

    const-class v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->attributes_hash:J

    iput-wide v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->attributes_hash:J

    :cond_5
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->counters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$resaleStarGifts;->counters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeCounter;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeCounter;->attribute:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdBackdrop;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;->backdrop_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeCounter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdPattern;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    :goto_5
    iget-wide v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;->document_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_8
    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdModel;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->onUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_a

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reqId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->account:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reqId:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLoadedCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSorting()Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->sorting:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->totalCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public load()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load(Z)V

    return-void
.end method

.method public load(Z)V
    .locals 6

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->endReached:Z

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;-><init>()V

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gift_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->gift_id:J

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->last_offset:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->offset:Ljava/lang/String;

    const/16 v1, 0xf

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->limit:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->sorting:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    sget-object v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iput-boolean p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_num:Z

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_price:Z

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    if-ne v1, v2, :cond_3

    iput-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_num:Z

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    if-ne v1, v2, :cond_4

    iput-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_num:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->sort_by_price:Z

    :cond_4
    :goto_1
    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->attributes_hash:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    or-int/2addr p1, v3

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes_hash:J

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    iput-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes_hash:J

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    :cond_7
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->flags:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdModel;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdModel;-><init>()V

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;->document_id:J

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdBackdrop;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdBackdrop;-><init>()V

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    iput v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;->backdrop_id:I

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdPattern;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeIdPattern;-><init>()V

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeId;->document_id:J

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iget p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->account:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;Lorg/telegram/tgnet/tl/TL_stars$getResaleStarGifts;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reqId:I

    :cond_e
    :goto_6
    return-void
.end method

.method public reload()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->last_offset:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->onUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->sorting:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->sorting:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    :cond_0
    return-void
.end method
