.class public Lorg/telegram/ui/Stars/StarsController$GiftsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stars/StarsController$IGiftsList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftsList"
.end annotation


# instance fields
.field public chat_notifications_enabled:Ljava/lang/Boolean;

.field public final currentAccount:I

.field public currentRequestId:I

.field public final dialogId:J

.field public endReached:Z

.field public gifts:Ljava/util/ArrayList;

.field public include_displayed:Z

.field public include_hidden:Z

.field public include_limited:Z

.field public include_unique:Z

.field public include_unlimited:Z

.field public lastOffset:Ljava/lang/String;

.field public loading:Z

.field private savedPinnedState:Ljava/util/ArrayList;

.field public shown:Z

.field public sort_by_date:Z

.field public totalCount:I


# direct methods
.method public static synthetic $r8$lambda$9qiI7tKVicfQoc42OBZn5RKwC7c(Lorg/telegram/ui/Stars/StarsController$GiftsList;[ILorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$load$0([ILorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$R44KHcXsMh8b5yAcsAjehxmwKqs(Lorg/telegram/ui/Stars/StarsController$GiftsList;[IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$load$1([IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6VQjSi0j53YAaOziD8lZQ7nPLA(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$togglePinned$3(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gBfUT0rxtkyV93GnFz6zCbX5-X8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$sendPinnedOrder$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1qAORYSwsxsaYyl5-h9QOCj1r0(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lambda$setPinned$2(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;-><init>(IJZ)V

    return-void
.end method

.method public constructor <init>(IJZ)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unlimited:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_limited:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unique:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_displayed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_hidden:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$load$0([ILorg/telegram/tgnet/TLObject;Z)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget p1, p1, v2

    iget v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    if-eq p1, v3, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    if-eqz p1, :cond_5

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->count:I

    iput p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    iget-boolean p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chat_notifications_enabled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->chat_notifications_enabled:Ljava/lang/Boolean;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-gt p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    goto :goto_3

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    :goto_3
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p0, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1([IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;[ILorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$sendPinnedOrder$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$setPinned$2(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I
    .locals 0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$togglePinned$3(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)I
    .locals 0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public eq(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    return-object v0
.end method

.method public getLoadedCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPinned()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    return v0
.end method

.method public hasFilters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unlimited:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_limited:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unique:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_displayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_hidden:Z

    if-nez v0, :cond_0

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

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public invalidate(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->shown:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_2
    return-void
.end method

.method public load()V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    new-instance v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;-><init>()V

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->sort_by_value:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_limited:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_limited:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unlimited:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unlimited:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unique:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unique:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_displayed:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_saved:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_hidden:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->exclude_unsaved:Z

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    :goto_1
    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    :cond_2
    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_3

    const-string v4, ""

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->lastOffset:Ljava/lang/String;

    :goto_3
    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->offset:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    const/16 v5, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_4

    :cond_4
    const/16 v4, 0x1e

    :goto_4
    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGifts;->limit:I

    new-array v2, v2, [I

    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;[IZ)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentRequestId:I

    aput v0, v2, v1

    :cond_5
    :goto_5
    return-void
.end method

.method public reorderDone()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->eq(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    return-void

    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    return-void
.end method

.method public reorderPinned(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->savedPinnedState:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public resetFilters()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->hasFilters()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unlimited:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_limited:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unique:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_displayed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_hidden:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    return-void
.end method

.method public sendPinnedOrder()V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$toggleStarGiftsPinnedToTop;->stargift:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda2;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public setPinned(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    return-void
.end method

.method public togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    if-le v3, v4, :cond_6

    if-eqz p3, :cond_5

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p3, v0

    iget v3, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    if-le p3, v3, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    goto :goto_0

    :cond_4
    const/4 p3, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iput-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    return p3
.end method
