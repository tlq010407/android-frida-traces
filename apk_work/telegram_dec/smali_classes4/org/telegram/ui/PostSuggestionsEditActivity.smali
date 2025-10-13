.class public Lorg/telegram/ui/PostSuggestionsEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private final currentChatId:J

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private final initialSuggestionsEnabled:Z

.field private final initialSuggestionsStarsCount:J

.field private isSuggestionsEnabled:Z

.field private lastHasChanges:Z

.field private listAdapter:Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private rowCount:I

.field private rowSuggestionPriceHeader:I

.field private rowSuggestionPriceInfo:I

.field private rowSuggestionPriceSlider:I

.field private rowSuggestionsEnabled:I

.field private rowSuggestionsEnabledInfo:I

.field private starsCallback:Lorg/telegram/messenger/MessagesStorage$LongCallback;

.field private suggestionsStarsCount:J


# direct methods
.method public static synthetic $r8$lambda$FiS-aWITWAzaM20mXB3gQGUC5Dk(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PostSuggestionsEditActivity;->lambda$processDone$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SWSpzf47o6FUeT9WptlY9s8U4T8(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->lambda$onBackPressed$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xmn_hA6TyXKcnAR54AJHmbvV35M(Lorg/telegram/ui/PostSuggestionsEditActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PostSuggestionsEditActivity;->lambda$createView$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_fhW7c00PKsKKRG213e9GI-mPyM(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PostSuggestionsEditActivity;->lambda$onBackPressed$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNnf9LyA8hhkm4HUhHS_azjyEuY(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PostSuggestionsEditActivity;->lambda$processDone$2(Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 9

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->lastHasChanges:Z

    iput-wide p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->currentChatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    :goto_1
    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast_messages_allowed:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->initialSuggestionsEnabled:Z

    if-eqz v0, :cond_3

    :goto_3
    move-wide v3, v1

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object p1, p1, Lorg/telegram/messenger/AppGlobalConfig;->starsPaidMessagesChannelAmountDefault:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {p1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result p1

    int-to-long v1, p1

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v5, p1, Lorg/telegram/messenger/MessagesController;->starsPaidMessageAmountMax:J

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->initialSuggestionsStarsCount:J

    iput-boolean v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    iput-wide p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PostSuggestionsEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->processDone()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/PostSuggestionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PostSuggestionsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PostSuggestionsEditActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity;->checkDone(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/PostSuggestionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabled:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PostSuggestionsEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PostSuggestionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceHeader:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PostSuggestionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceSlider:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PostSuggestionsEditActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PostSuggestionsEditActivity;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/PostSuggestionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabledInfo:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PostSuggestionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceInfo:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PostSuggestionsEditActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private checkDone(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->hasChanges()Z

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->lastHasChanges:Z

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->lastHasChanges:Z

    iget-object v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    return-void
.end method

.method private hasChanges()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    iget-wide v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->initialSuggestionsStarsCount:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->initialSuggestionsEnabled:Z

    if-eq v0, v1, :cond_0

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

.method private synthetic lambda$createView$0(Landroid/view/View;IFF)V
    .locals 2

    iget p3, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabled:I

    if-ne p2, p3, :cond_3

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    iput-boolean p3, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    if-eqz p3, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->updateRows()V

    iget-boolean p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listAdapter:Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabledInfo:I

    add-int/2addr v1, p4

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listAdapter:Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabledInfo:I

    add-int/2addr v1, p4

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :goto_2
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    invoke-direct {p0, p4}, Lorg/telegram/ui/PostSuggestionsEditActivity;->checkDone(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onBackPressed$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$processDone$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->starsCallback:Lorg/telegram/messenger/MessagesStorage$LongCallback;

    if-eqz p1, :cond_2

    iget-boolean p2, p3, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->suggestions_allowed:Z

    if-eqz p2, :cond_1

    iget-wide p2, p3, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->send_paid_messages_stars:J

    goto :goto_0

    :cond_1
    const-wide/16 p2, -0x1

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$LongCallback;->run(J)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$processDone$2(Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processDone()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->currentChatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :goto_0
    iput-wide v4, v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->send_paid_messages_stars:J

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->suggestions_allowed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;)V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->currentChatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    const/high16 v5, 0x10000

    or-int/2addr v1, v5

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast_messages_allowed:Z

    goto :goto_1

    :cond_3
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    const v5, -0x10001

    and-int/2addr v1, v5

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast_messages_allowed:Z

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    iget-wide v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    goto :goto_2

    :cond_4
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->starsCallback:Lorg/telegram/messenger/MessagesStorage$LongCallback;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    if-eqz v1, :cond_6

    iget-wide v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->suggestionsStarsCount:J

    goto :goto_3

    :cond_6
    const-wide/16 v1, -0x1

    :goto_3
    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage$LongCallback;->run(J)V

    :cond_7
    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabled:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowCount:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionsEnabledInfo:I

    iget-boolean v1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->isSuggestionsEnabled:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceHeader:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceSlider:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowCount:I

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceInfo:I

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceHeader:I

    iput v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->rowSuggestionPriceSlider:I

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PostSuggestions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PostSuggestionsEditActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PostSuggestionsEditActivity$1;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v4, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->checkDone(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listAdapter:Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v3, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, -0x1

    const/16 v1, 0x33

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listAdapter:Lorg/telegram/ui/PostSuggestionsEditActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->hasChanges()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBackPressed()Z
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->UnsavedChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->MessageSuggestionsUnsavedChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Discard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PostSuggestionsEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PostSuggestionsEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    invoke-direct {p0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->updateRows()V

    const/4 v0, 0x1

    return v0
.end method

.method public setOnApplied(Lorg/telegram/messenger/MessagesStorage$LongCallback;)Lorg/telegram/ui/PostSuggestionsEditActivity;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PostSuggestionsEditActivity;->starsCallback:Lorg/telegram/messenger/MessagesStorage$LongCallback;

    return-object p0
.end method
