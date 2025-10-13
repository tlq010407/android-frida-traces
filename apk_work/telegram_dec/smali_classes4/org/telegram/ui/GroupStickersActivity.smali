.class public Lorg/telegram/ui/GroupStickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;,
        Lorg/telegram/ui/GroupStickersActivity$ListAdapter;,
        Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;
    }
.end annotation


# instance fields
.field private addEmojiCell:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

.field private addEmojiPackHintRow:I

.field private addEmojiPackRow:I

.field private addEmojiPackTitleRow:I

.field private final chatId:J

.field private currentEmojiPackRow:I

.field private emptyFrameView:Landroid/widget/FrameLayout;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private headerRow:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoRow:I

.field private isEmoji:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private removeStickerSet:Z

.field private rowCount:I

.field private searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searching:Z

.field private selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private selectedStickerSetIndex:I

.field private stickersEndRow:I

.field private stickersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$2fw_XdZNX7uEep1Bk1wVf2mXBSU(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;->lambda$saveStickerSet$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MmkaKFZ2sdDrs4ISPg6phql4hvU(Lorg/telegram/ui/GroupStickersActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dA7c7Oi6RZ6l4c-hYed3Wx_q760(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->lambda$saveStickerSet$1(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    iput-wide p1, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    iput-wide p1, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    iput-boolean p3, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupStickersActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;->updateCurrentPackVisibility(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSetType()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->infoRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackHintRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackTitleRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiCell:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiCell:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->headerRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->selectSetAfterSearch(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupStickersActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupStickersActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/GroupStickersActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    return p1
.end method

.method private getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    return-object p1

    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    return-object p1
.end method

.method private getStickerSetType()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$3500(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$3600(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$3500(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$3500(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p2, v0, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$3500(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2, v2}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    if-lt p2, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    if-ge p2, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSetType()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    :cond_4
    iget p1, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, v2, p1, v1}, Lorg/telegram/ui/GroupStickersActivity;->onStickerSetClicked(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$saveStickerSet$1(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/MediaDataController;->putGroupStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    iget-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_1

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit16 v3, v3, 0x400

    :goto_1
    iput v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    goto :goto_3

    :cond_1
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v3, v3, -0x401

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v3, :cond_3

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit16 v3, v3, 0x100

    :goto_2
    iput v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_3

    :cond_3
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v3, v3, -0x101

    goto :goto_2

    :goto_3
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v5, v6, v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v6, v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x3

    aput-object v4, v6, v5

    invoke-virtual {p1, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_4
    return-void
.end method

.method private synthetic lambda$saveStickerSet$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStickerSetClicked(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez p3, :cond_1

    move-object v7, p2

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V

    new-instance p3, Lorg/telegram/ui/GroupStickersActivity$4;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity$4;-><init>(Lorg/telegram/ui/GroupStickersActivity;ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/StickersAlert;->setCustomButtonDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    return-void
.end method

.method private saveStickerSet()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, v2}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, v0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setEmojiStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_setEmojiStickers;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setEmojiStickers;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-boolean v1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setEmojiStickers;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setEmojiStickers;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-boolean v1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    if-eqz v1, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_1

    :cond_4
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_hide_stickers_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_setStickers;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_0

    :goto_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private selectSetAfterSearch(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$raw;->done:I

    sget v4, Lorg/telegram/messenger/R$string;->GroupsEmojiPackUpdated:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-boolean v2, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-boolean v1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$raw;->done:I

    sget v4, Lorg/telegram/messenger/R$string;->GroupsEmojiPackUpdated:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/GroupStickersActivity;->updateCurrentPackVisibility(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    add-int/2addr v6, v0

    if-ne v5, v6, :cond_2

    check-cast v4, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget v4, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    if-eq v0, p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity;->searching:Z

    if-nez p1, :cond_6

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    iget v4, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    add-int/2addr v3, v4

    if-ne v0, v3, :cond_5

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    iget v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method private setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    :goto_0
    return-void
.end method

.method private updateCurrentPackVisibility(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget v2, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, v1}, Lorg/telegram/ui/GroupStickersActivity;->updateRows(Z)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiCell:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->setNeedDivider(Z)V

    goto :goto_3

    :cond_4
    iget p1, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/GroupStickersActivity;->updateRows(Z)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiCell:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->setNeedDivider(Z)V

    :goto_3
    return-void
.end method

.method private updateRows()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 3

    .line 0
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackTitleRow:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackRow:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackHintRow:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iget-boolean v2, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz v2, :cond_1

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackTitleRow:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackRow:I

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->currentEmojiPackRow:I

    :cond_0
    iget v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->addEmojiPackHintRow:I

    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSetType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->headerRow:I

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->headerRow:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersStartRow:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->stickersEndRow:I

    :goto_0
    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupStickersActivity;->infoRow:I

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateSelectedStickerSetIndex()V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private updateSelectedStickerSetIndex()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSetType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    iget-boolean v1, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    :goto_0
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, v1}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, v1}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    move-wide v4, v2

    :goto_2
    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSetIndex:I

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/GroupStickersActivity;->isEmoji:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->GroupEmojiPack:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->GroupStickers:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupStickersActivity$1;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupStickersActivity$2;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->searchAdapter:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v2, p1, v3, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-static {v2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity;->emptyFrameView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->listAdapter:Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupStickersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupStickersActivity$3;-><init>(Lorg/telegram/ui/GroupStickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSetType()I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/GroupStickersActivity;->chatId:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows()V

    goto :goto_2

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_3

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, p3}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, p3}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p3

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 35

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const-class v11, Lorg/telegram/ui/Cells/StickerSetCell;

    const-class v12, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v11, v5, v13

    const/4 v14, 0x1

    aput-object v12, v5, v14

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v30, v22

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v13

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v25, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v13

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v22, v25

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v13

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v30

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v12, v4, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v30

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    move/from16 v34, v5

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v12, v4, v13

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v8, v4, v13

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v11, v4, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v11, v4, v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v17, v4, v5

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v11, v4, v13

    const-string v5, "optionsButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupStickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v11, v4, v13

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    const/16 v31, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSetType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->updateRows()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity;->removeStickerSet:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupStickersActivity;->saveStickerSet()V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0, v0}, Lorg/telegram/ui/GroupStickersActivity;->getStickerSet(Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity;->selectedStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_0
    return-void
.end method
