.class public Lorg/telegram/ui/Business/BusinessIntroActivity;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private clearVisible:Z

.field private currentMessage:Ljava/lang/String;

.field private currentSticker:J

.field private currentTitle:Ljava/lang/String;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

.field private greetingsViewBackground:Landroid/graphics/drawable/Drawable;

.field private inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field private inputStickerPath:Ljava/lang/String;

.field private keyboardVisible:Z

.field private messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field private previewContainer:Landroid/widget/FrameLayout;

.field private shiftDp:I

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private stickerRandom:Z

.field private titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field private final updateRandomStickerRunnable:Ljava/lang/Runnable;

.field private valueSet:Z


# direct methods
.method public static synthetic $r8$lambda$IJseFU17Pg78EA8NqjhDvfk6D1o(Lorg/telegram/ui/Business/BusinessIntroActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$processDone$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LN5DpbiMX1awhmq6nPm1QtDme84(Lorg/telegram/ui/Business/BusinessIntroActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->openCustomStickerEditor()V

    return-void
.end method

.method public static synthetic $r8$lambda$PbARWy0eIoa8MmB0N1zQfcVqoSc(Lorg/telegram/ui/Business/BusinessIntroActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$updateRandomSticker$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$QOPnYww0HLdfOzp8Zn8M3lwHWwI(Lorg/telegram/ui/Business/BusinessIntroActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$onBackPressed$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$av_GmL2pVpbabsSr5KRnC8kA9FQ(Lorg/telegram/ui/Business/BusinessIntroActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputDocument;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->setCustomSticker(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputDocument;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bFjW-5sE_ZIngwHbbmJA-dGFzbA(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/view/View;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$onClick$2(Landroid/view/View;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bZ_jedi6VzZ6eR489SrJ_IhGRzM(Lorg/telegram/ui/Business/BusinessIntroActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomSticker()V

    return-void
.end method

.method public static synthetic $r8$lambda$fvT-v9WeK7S9WH37yD7B5oAHBxY(Lorg/telegram/ui/Business/BusinessIntroActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$onBackPressed$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oceY_pMzncPnCVtICOzUUsN2CSo(Lorg/telegram/ui/Business/BusinessIntroActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$createView$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwouftzYVBIlVfqbZuUV7PUPODo(Lorg/telegram/ui/Business/BusinessIntroActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->lambda$processDone$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getGreetingsSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->clearVisible:Z

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->shiftDp:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatGreetingsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Business/BusinessIntroActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Business/BusinessIntroActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Cells/EditTextCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Cells/EditTextCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Business/BusinessIntroActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->checkDone(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Business/BusinessIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->processDone()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Business/BusinessIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateGreetingScale()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Business/BusinessIntroActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Business/BusinessIntroActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Business/BusinessIntroActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method private checkDone(ZZ)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->hasChanges()Z

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p2, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->clearVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eq p1, p2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UniversalFragment;->saveScrollPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UniversalFragment;->applyScrolledPosition()V

    :cond_8
    return-void
.end method

.method private createChatAttachView()V
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$9;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Business/BusinessIntroActivity$9;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Business/BusinessIntroActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$10;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$1(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->keyboardVisible:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->keyboardVisible:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onBackPressed$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onClick$2(Landroid/view/View;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    iget-object p4, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p4, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iput-object p3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/ChatGreetingsView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/TextCell;->setValueSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->checkDone(ZZ)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$processDone$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$processDone$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateRandomSticker$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private openCustomStickerEditor()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->setStickerSetForCustomSticker(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->createChatAttachView()V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setOpenWithFrontFaceCamera(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v2, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->enableStickerMode(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private processDone()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;->flags:I

    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;->intro:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->title:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;->intro:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->description:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;->intro:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    if-eqz v3, :cond_2

    :goto_0
    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->sticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessIntro;->intro:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->title:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->title:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessIntro;->description:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->description:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_5

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->flags:I

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    return-void
.end method

.method private setCustomSticker(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputDocument;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputStickerPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputStickerPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatGreetingsView;->setSticker(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->checkDone(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private setValue()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->valueSet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->title:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentTitle:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->description:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_intro:Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessIntro;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    const-string v2, ""

    iput-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iput-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_3
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_2
    iput-wide v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentSticker:J

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ChatGreetingsView;->setPreview(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-eqz v3, :cond_6

    :cond_5
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getGreetingsSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatGreetingsView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->valueSet:Z

    return-void
.end method

.method private updateGreetingScale()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f266666    # 0.65f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateRandomSticker()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getGreetingsSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatGreetingsView;->setNextSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$1;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v7, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Business/BusinessIntroActivity$1;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Business/BusinessIntroActivity$2;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget-object v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    const-string v4, "paintChatActionBackground"

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsViewBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatGreetingsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Business/BusinessIntroActivity$3;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v2, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x77

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    const/high16 v8, 0x42280000    # 42.0f

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x11

    const/high16 v6, 0x42280000    # 42.0f

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$4;

    sget v2, Lorg/telegram/messenger/R$string;->BusinessIntroTitleHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v10, v2, Lorg/telegram/messenger/MessagesController;->introTitleLengthLimit:I

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Business/BusinessIntroActivity$4;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/EditTextCell;->autofocused:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitOnFocus(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setDivider(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$5;

    sget v4, Lorg/telegram/messenger/R$string;->BusinessIntroMessageHint:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v10, v4, Lorg/telegram/messenger/MessagesController;->introDescriptionLengthLimit:I

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Business/BusinessIntroActivity$5;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitOnFocus(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setDivider(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    const-string v3, ""

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/ChatGreetingsView;->setPreview(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Business/BusinessIntroActivity$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$6;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v4, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v0, p1, v4}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Business/BusinessIntroActivity;->checkDone(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$7;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/Business/BusinessIntroActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$8;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->doNotDetachViews()V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->setValue()V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->setValue()V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->previewContainer:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BusinessIntroHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->BusinessIntroSticker:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->BusinessIntroStickerRandom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputStickerPath:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessIntroSticker:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputStickerPath:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lorg/telegram/ui/Components/UItem;->asStickerButton(ILjava/lang/CharSequence;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->BusinessIntroSticker:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, p2, v1}, Lorg/telegram/ui/Components/UItem;->asStickerButton(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->BusinessIntroInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->clearVisible:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BusinessIntroReset:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asLargeShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->BusinessIntro:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChanges()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentTitle:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentMessage:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v1, 0x0

    :goto_2
    iget-wide v3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->currentSticker:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->inputSticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public onBackPressed()Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Business/BusinessIntroActivity;->hasChanges()Z

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

    sget v1, Lorg/telegram/messenger/R$string;->BusinessIntroUnsavedChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

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

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    invoke-direct {p1, p4, p3, p5, p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    new-instance p3, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenDocumentSelected(Lorg/telegram/messenger/Utilities$Callback3Return;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    new-instance p2, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Business/BusinessIntroActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/BusinessIntroActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenPlusSelected(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->titleEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->messageEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iput-boolean p3, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->stickerRandom:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/ChatGreetingsView;->setPreview(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->greetingsView:Lorg/telegram/ui/Components/ChatGreetingsView;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getGreetingsSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatGreetingsView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessIntroActivity;->updateRandomStickerRunnable:Ljava/lang/Runnable;

    const-wide/16 p4, 0x1388

    invoke-static {p1, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Business/BusinessIntroActivity;->checkDone(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
