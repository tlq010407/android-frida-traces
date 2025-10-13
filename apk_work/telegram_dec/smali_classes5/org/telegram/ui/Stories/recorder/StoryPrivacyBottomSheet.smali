.class public Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ContainerView;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell2;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;,
        Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;
    }
.end annotation


# instance fields
.field private activePage:I

.field private allowCover:Z

.field private allowScreenshots:Z

.field private allowSmallChats:Z

.field private applyWhenDismiss:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private canChangePeer:Z

.field private coverDrawable:Landroid/graphics/drawable/Drawable;

.field private final excludedContacts:Ljava/util/ArrayList;

.field private final excludedEveryone:Ljava/util/ArrayList;

.field private final excludedEveryoneByGroup:Ljava/util/HashMap;

.field private excludedEveryoneCount:I

.field private isEdit:Z

.field private keepOnMyPage:Z

.field private loadedContacts:Z

.field private final messageUsers:Ljava/util/ArrayList;

.field private onDismiss:Lorg/telegram/messenger/Utilities$Callback;

.field private onDone:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;

.field private onDone2:Lorg/telegram/messenger/Utilities$Callback;

.field private onSelectedPeer:Lorg/telegram/messenger/Utilities$Callback;

.field private final selectedContacts:Ljava/util/ArrayList;

.field private final selectedContactsByGroup:Ljava/util/HashMap;

.field private selectedContactsCount:I

.field public selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private selectedType:I

.field private sendAsMessageEnabled:Z

.field private shiftDp:I

.field private smallChatsParticipantsCount:Ljava/util/HashMap;

.field private startedFromSendAsMessage:Z

.field private storiesCount:I

.field private storyPeriod:I

.field private viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private warnUsers:Ljava/util/ArrayList;

.field private whenCoverClicked:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$D_xJQlGmijl8Mts4lfOfMsN51u0(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$new$1(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U64sabO412UvW6S2Pay4rouvY9w(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$done$2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e3bbDBvodcFRakBqslpoVJPZ-vA(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$done$3(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zf8TwZjKhX_xtWl9-wpfaH4VOi0(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->lambda$new$0(Ljava/util/HashMap;)V

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    const/4 p3, 0x0

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    const/4 v1, -0x6

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->shiftDp:I

    const v1, 0x15180

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->init(Landroid/content/Context;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    const/4 p3, 0x0

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    const/4 v1, -0x6

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->shiftDp:I

    const v1, 0x15180

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->pullSaved()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->init(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklist(Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$11001(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getContacts()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onSelectedPeer:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone2:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->startedFromSendAsMessage:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    return p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedShare(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    return p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storyPeriod:I

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getCloseFriends()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    return p0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    return p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    return p0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    return p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenCoverClicked:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->coverDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getChats()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats:Z

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;ZZ)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getUsers(ZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result p0

    return p0
.end method

.method static synthetic access$9401(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$9501(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method private done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Z)V
    .locals 10

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v5, v6

    :cond_1
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v6, :cond_2

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    if-nez p3, :cond_6

    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_5

    if-lez v1, :cond_4

    const-string v4, ", "

    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->StoryRestrictions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryRestrictionsInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-static {v2, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->Proceed:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p3

    aget-object p3, p3, v2

    instance-of v0, p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_7

    check-cast p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$13000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p3

    goto :goto_3

    :cond_7
    move-object p3, v3

    :goto_3
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;

    if-eqz v4, :cond_a

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_9

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, p3, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    :cond_9
    move-object v9, v3

    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_b
    :goto_4
    return-void
.end method

.method private getChats()Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->canAddToForward(Lorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v7, 0xbdb28

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_1
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getCloseFriends()Ljava/util/ArrayList;
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->close_friend:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getContacts()Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    :cond_1
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-eqz v1, :cond_3

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v4, :cond_2

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v7, 0xbdb28

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    return p1
.end method

.method private getUsers(ZZ)Ljava/util/ArrayList;
    .locals 12

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->loadedContacts:Z

    if-nez v6, :cond_1

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->loadedContacts:Z

    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/32 v7, 0xbdb28

    if-ge v5, v6, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v9, :cond_6

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v7, :cond_6

    if-eqz p1, :cond_3

    if-eqz v4, :cond_6

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_8

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v3, v7

    if-eqz v5, :cond_8

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ContainerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v1, -0x1

    const/16 v2, 0x77

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$done$2(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->done(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static synthetic lambda$done$3(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->smallChatsParticipantsCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSmallGroupsParticipantsCount()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private pullSaved()V
    .locals 14

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "story_prv_contacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "story_prv_grpcontacts"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    const/4 v6, 0x0

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_3

    aget-object v7, v0, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-gtz v8, :cond_1

    goto :goto_3

    :cond_1
    :try_start_1
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x1

    :goto_2
    array-length v12, v7

    if-ge v11, v12, :cond_2

    aget-object v12, v7, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "story_prv_everyoneexcept"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    :goto_4
    array-length v7, v0

    if-ge v6, v7, :cond_4

    :try_start_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "story_prv_grpeveryoneexcept"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x0

    :goto_5
    array-length v6, v0

    if-ge v4, v6, :cond_7

    aget-object v6, v0, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-gtz v7, :cond_5

    goto :goto_7

    :cond_5
    :try_start_3
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    :goto_6
    array-length v11, v6

    if-ge v10, v11, :cond_6

    aget-object v11, v6, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_3
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "story_prv_excluded"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_8

    :try_start_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "story_noforwards"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "story_keep"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    return-void
.end method

.method private save()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ";"

    const-string v4, ","

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "story_prv_everyoneexcept"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "story_prv_grpeveryoneexcept"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "story_prv_contacts"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "story_prv_grpcontacts"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "story_prv_excluded"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowScreenshots:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "story_noforwards"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->keepOnMyPage:Z

    const-string v2, "story_keep"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private whenSelectedShare(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone2:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method


# virtual methods
.method public allowCover(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method protected canDismissWithSwipe()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->wasAtTop:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected canSwipeToBack(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public closeKeyboard()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$1500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$1500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$12900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget p3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_1

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    :cond_1
    aget-object p1, p1, v1

    instance-of p2, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    goto :goto_3

    :cond_2
    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    if-ne p1, p3, :cond_5

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    :goto_0
    array-length p2, p1

    if-ge v0, p2, :cond_7

    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_4

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    const/4 v2, 0x6

    if-ne p3, v2, :cond_3

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->applyBlocklist(Z)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I

    if-ne p1, p3, :cond_7

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    :goto_2
    array-length p2, p1

    if-ge v0, p2, :cond_7

    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz p3, :cond_6

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget p3, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    if-nez p3, :cond_6

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public dismiss()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v1, v0, v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->save()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesSendAsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public enableSharing(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->sendAsMessageEnabled:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method public setCanChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->canChangePeer:Z

    return-object p0
.end method

.method public setCount(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->storiesCount:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setCover(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 4

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->coverDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public setCover(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 3

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->coverDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenCoverClicked:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateItems(Z)V

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public setPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_0
    const/4 v0, 0x1

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_1
    return-object p0
.end method

.method public setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedContacts:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContacts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->selectedContactsCount:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryone:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneByGroup:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->mergeUsers(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->excludedEveryoneCount:I

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->isShare()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->startedFromSendAsMessage:Z

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->activePage:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->messageUsers:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->sendToUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_5
    aget-object p1, p1, v1

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->pageType:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    :cond_6
    return-object p0
.end method

.method public setWarnUsers(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->warnUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public whenDismiss(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDismiss:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public whenSelectedPeer(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onSelectedPeer:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->onDone:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->applyWhenDismiss:Z

    return-object p0
.end method
