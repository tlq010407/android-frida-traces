.class public Lorg/telegram/ui/Business/ChatbotsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# static fields
.field private static final BUTTON_DELETE:I = -0x3

.field private static final PERMISSION_GIFTS:I = -0xf

.field private static final PERMISSION_GIFTS_SELL:I = -0x11

.field private static final PERMISSION_GIFTS_SETTINGS:I = -0x12

.field private static final PERMISSION_GIFTS_TRANSFER:I = -0x13

.field private static final PERMISSION_GIFTS_TRANSFER_STARS:I = -0x14

.field private static final PERMISSION_GIFTS_VIEW:I = -0x10

.field private static final PERMISSION_MESSAGES:I = -0x4

.field private static final PERMISSION_MESSAGES_DELETE_RECEIVED:I = -0x9

.field private static final PERMISSION_MESSAGES_DELETE_SENT:I = -0x8

.field private static final PERMISSION_MESSAGES_MARK_AS_READ:I = -0x7

.field private static final PERMISSION_MESSAGES_READ:I = -0x5

.field private static final PERMISSION_MESSAGES_REPLY:I = -0x6

.field private static final PERMISSION_PROFILE:I = -0xa

.field private static final PERMISSION_PROFILE_BIO:I = -0xc

.field private static final PERMISSION_PROFILE_NAME:I = -0xb

.field private static final PERMISSION_PROFILE_PICTURE:I = -0xd

.field private static final PERMISSION_PROFILE_USERNAME:I = -0xe

.field private static final PERMISSION_STORIES:I = -0x15

.field private static final RADIO_EXCLUDE:I = -0x1

.field private static final RADIO_INCLUDE:I = -0x2


# instance fields
.field public currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

.field public currentValue:Lorg/telegram/tgnet/tl/TL_account$connectedBots;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private editTextContainer:Landroid/widget/FrameLayout;

.field private editTextDivider:Landroid/view/View;

.field private emptyView:Landroid/widget/FrameLayout;

.field private emptyViewLoading:Landroid/widget/ImageView;

.field private emptyViewText:Landroid/widget/TextView;

.field public exclude:Z

.field private expandedGiftsSection:Z

.field private expandedMessagesSection:Z

.field private expandedProfileSection:Z

.field private foundBots:Landroid/util/LongSparseArray;

.field private introText:Landroid/text/SpannableStringBuilder;

.field private lastQuery:Ljava/lang/String;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private loading:Z

.field private recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

.field public rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

.field private scheduledLoading:Z

.field private search:Ljava/lang/Runnable;

.field private searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchId:I

.field private selectedBot:Lorg/telegram/tgnet/TLRPC$User;

.field private shakeDp:I

.field private shownGiftsPermissionsAlert:Z

.field private shownUsernamePermissionsAlert:Z

.field private valueSet:Z

.field private wasLoading:Z


# direct methods
.method public static synthetic $r8$lambda$2yZdLFDCx_HdlaO4fYBRoaZo5hc(Lorg/telegram/ui/Business/ChatbotsActivity;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$processDone$21([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Zhy_fBU2ZEk6qK3e-qhJJjXJSM(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->clear(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DeOhfEzhkIU5qE_HV-Mt_t4wdqs(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onBackPressed$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Eg7e2A2ngG_-W4gZGHZH8sh7gSA(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MZZujdMgtQzHQ7Iyac3--1ryi_Q(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfD6Yez23YoRPbR1n-ZNIdmKmEs(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpiNqiN9GYog9dXNTF5cbImKwZQ(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$O9jLDpCplYKtM7l_pXi3GmAt7pM(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODJGYm9vxFluGjQoJh1FisKAD4Y(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$processDone$19(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P91lylblWqfSGqMFR2hzME1Rd5c(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Php_iSrcvMItbjvHCvX31iCJVFA(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PxUPGj4jKqzh7G4wc4FXJWr2XlE(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UBi4Ed24AJ0AuOqbVQw0M434imQ(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJ8tbavTqeAuEgg6f8ynboYmRGk(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9pABIr92qNtByLOjrT4XbT8iIs(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$_jzAoeVRytubzhpVx4OxyHhdLT0(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjPf3VggRTdfi-Fyg0Uwq9TNv1I(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$fillItems$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$hsPWW5pNBSnMMWR34ctuZfiP-NQ(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hsWjQGsHFpAB5uXhPRcunrpiyeI(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$icMjgQv1AwS-gl29gADhWjQ9Os4(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$checkAlert$4(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQWJ5PcTPzljGDTrvHVrQHzQzbo(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$ljb0Hki-59Uyef7Os_mVGAhNJdg(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$ndIS0dvlyiCV407meOOTqgqgTrQ(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$processDone$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$niSBNSXOVRr1_jMlXwEPMBhZpu4(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$createView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vlVdS3TnSYXUs_pMUpRlUDMSvJM(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/tl/TL_account$connectedBots;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$setValue$22(Lorg/telegram/tgnet/tl/TL_account$connectedBots;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2a-HXobO8iyiRiMJ1w07lnfQ4E(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onBackPressed$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkbyxmOrhn4pFx7sMSVppAOP0us(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$checkAlert$5(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z93XUF_e5dhH3TGHc4eCOFaAf1g(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/ChatbotsActivity;->lambda$onClick$17(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchId:I

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->makeDefault()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    const/4 v1, -0x4

    iput v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shakeDp:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->processDone()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduleSearch()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Business/ChatbotsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Business/ChatbotsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->updateSearchLoading()V

    return-void
.end method

.method private checkAlert(IZLjava/lang/Runnable;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownUsernamePermissionsAlert:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sget v2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsWarning:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsUsernamesWarningText:I

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Allow:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownGiftsPermissionsAlert:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    if-ne p1, p2, :cond_2

    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsWarning:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsWarningText:I

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Allow:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private checkDone(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->hasChanges()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    return-void
.end method

.method private clear(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->introText:Landroid/text/SpannableStringBuilder;

    const-string v1, "RestrictedEmoji"

    const-string v2, "\ud83e\udd16"

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCloseIcon(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v3, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextDivider:Landroid/view/View;

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    :goto_5
    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotLinkInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_10

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotChats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_EXCLUDE:I

    sget v0, Lorg/telegram/messenger/R$string;->BusinessChatsAllPrivateExcept:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_INCLUDE:I

    sget v0, Lorg/telegram/messenger/R$string;->BusinessChatsOnlySelected:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->fillItems(Ljava/util/ArrayList;)V

    sget v0, Lorg/telegram/messenger/R$string;->BusinessBotChatsInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/messenger/R$string;->BusinessBotPermissions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesSection:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    add-int/2addr v6, v2

    iget-boolean v7, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    add-int/2addr v6, v7

    iget-boolean v7, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    add-int/2addr v6, v7

    iget-boolean v5, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    if-eqz v4, :cond_a

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    if-eqz v0, :cond_b

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_READ:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesRead:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_REPLY:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesReply:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_MARK_AS_READ:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesMarkAsRead:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_SENT:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesDeleteSent:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_RECEIVED:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsMessagesDeleteReceived:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileSection:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    add-int/2addr v7, v8

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    add-int/2addr v7, v8

    iget-boolean v6, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/4"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    if-eqz v4, :cond_c

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    if-eqz v0, :cond_d

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_NAME:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileName:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_BIO:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileBio:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_PICTURE:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfilePicture:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsProfileUsername:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS:I

    sget v3, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsSection:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    add-int/2addr v7, v8

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    add-int/2addr v7, v8

    iget-boolean v8, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    add-int/2addr v7, v8

    iget-boolean v6, v6, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    if-eqz v4, :cond_e

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    if-eqz v4, :cond_e

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    if-eqz v0, :cond_f

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_VIEW:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsView:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsSell:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsSettings:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsTransfer:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsGiftsTransferStars:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    sget v0, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_STORIES:I

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotPermissionsStories:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x4

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x5

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x6

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x7

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method private synthetic lambda$checkAlert$4(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownUsernamePermissionsAlert:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$checkAlert$5(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shownGiftsPermissionsAlert:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_1

    iput-boolean p3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->updateSearchLoading()V

    return p2

    :cond_1
    return p3
.end method

.method private synthetic lambda$createView$1()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$10(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fillItems$11(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$6(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$7()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$8(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fillItems$9()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iput-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    iget v12, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchId:I

    add-int/lit8 v0, v12, 0x1

    iput v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchId:I

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBackPressed$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onClick$12(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$13(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$14(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$15(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$16(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$17(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$18()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$processDone$19(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$processDone$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

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
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p1, :cond_2

    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p1, 0x0

    aget p2, p3, p1

    const/4 v0, 0x1

    add-int/2addr p2, v0

    aput p2, p3, p1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Business/BusinessChatbotController;->getInstance(I)Lorg/telegram/ui/Business/BusinessChatbotController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Business/BusinessChatbotController;->invalidate(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->clearFullUsers()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$processDone$21([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setValue$22(Lorg/telegram/tgnet/tl/TL_account$connectedBots;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentValue:Lorg/telegram/tgnet/tl/TL_account$connectedBots;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$connectedBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentValue:Lorg/telegram/tgnet/tl/TL_account$connectedBots;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$connectedBots;->connected_bots:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-static {p1}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->clone(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->makeDefault()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    :goto_5
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_7
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->valueSet:Z

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 2

    iget-object p3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->onClick(Lorg/telegram/ui/Components/UItem;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    sget p4, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_EXCLUDE:I

    const/4 p5, 0x1

    if-ne p3, p4, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    iput-boolean p5, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setExclude(Z)V

    goto/16 :goto_2

    :cond_1
    sget p4, Lorg/telegram/ui/Business/ChatbotsActivity;->RADIO_INCLUDE:I

    if-ne p3, p4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->exclude:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setExclude(Z)V

    goto/16 :goto_2

    :cond_2
    sget p4, Lorg/telegram/ui/Business/ChatbotsActivity;->BUTTON_DELETE:I

    const/4 v0, 0x0

    if-ne p3, p4, :cond_3

    iput-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_2

    :cond_3
    iget p4, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v1, 0xd

    if-ne p4, v1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    iget-wide p3, p1, Lorg/telegram/ui/Components/UItem;->dialogId:J

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_business:Z

    if-nez p2, :cond_5

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotNotSupportedTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BusinessBotNotSupportedMessage:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_6
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES:I

    if-ne p3, p1, :cond_7

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedMessagesSection:Z

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto/16 :goto_4

    :cond_7
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_READ:I

    if-ne p3, p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shakeDp:I

    neg-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->shakeDp:I

    int-to-float p1, p1

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    goto/16 :goto_4

    :cond_8
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_REPLY:I

    if-ne p3, p1, :cond_9

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->reply:Z

    :goto_1
    invoke-virtual {p2, p3, p5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_2

    :cond_9
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_MARK_AS_READ:I

    if-ne p3, p1, :cond_a

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->read_messages:Z

    goto :goto_1

    :cond_a
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_SENT:I

    if-ne p3, p1, :cond_b

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_sent_messages:Z

    goto :goto_1

    :cond_b
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_MESSAGES_DELETE_RECEIVED:I

    if-ne p3, p1, :cond_c

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->delete_received_messages:Z

    goto :goto_1

    :cond_c
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE:I

    if-ne p3, p1, :cond_d

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedProfileSection:Z

    goto :goto_0

    :cond_d
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_NAME:I

    if-ne p3, p1, :cond_e

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_name:Z

    goto :goto_1

    :cond_e
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_BIO:I

    if-ne p3, p1, :cond_f

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_bio:Z

    goto :goto_1

    :cond_f
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_PICTURE:I

    if-ne p3, p1, :cond_10

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    xor-int/2addr p3, p5

    iput-boolean p3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_profile_photo:Z

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, p5}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    goto/16 :goto_4

    :cond_10
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_PROFILE_USERNAME:I

    if-ne p3, p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->edit_username:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    goto :goto_3

    :cond_11
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS:I

    if-ne p3, p1, :cond_12

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->expandedGiftsSection:Z

    goto/16 :goto_0

    :cond_12
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_VIEW:I

    if-ne p3, p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->view_gifts:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    goto :goto_3

    :cond_13
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SELL:I

    if-ne p3, p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->sell_gifts:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    goto :goto_3

    :cond_14
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_SETTINGS:I

    if-ne p3, p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->change_gift_settings:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    goto :goto_3

    :cond_15
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER:I

    if-ne p3, p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_and_upgrade_gifts:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda13;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    goto :goto_3

    :cond_16
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_GIFTS_TRANSFER_STARS:I

    if-ne p3, p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->transfer_stars:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda14;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/view/View;)V

    goto :goto_3

    :cond_17
    sget p1, Lorg/telegram/ui/Business/ChatbotsActivity;->PERMISSION_STORIES:I

    if-ne p3, p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->manage_stories:Z

    xor-int/2addr p1, p5

    new-instance p4, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda15;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    :goto_3
    invoke-direct {p0, p3, p1, p4}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkAlert(IZLjava/lang/Runnable;)V

    :cond_18
    :goto_4
    return-void
.end method

.method private processDone()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->validate(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    iget-wide v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    iget-wide v1, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_4

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->deleted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    new-instance v2, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;-><init>()V

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->deleted:Z

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getBotInputValue()Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateConnectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessBotRecipients;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->getBotValue()Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_6
    filled-new-array {v2}, [I

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    new-instance v5, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v1, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;[ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private scheduleSearch()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->lastQuery:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->search:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->updateSearchLoading()V

    return-void
.end method

.method private setValue()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->valueSet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->loading:Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessChatbotController;->getInstance(I)Lorg/telegram/ui/Business/BusinessChatbotController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Business/BusinessChatbotController;->load(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSearchLoading()V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->wasLoading:Z

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->scheduledLoading:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->foundBots:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->wasLoading:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v2, :cond_5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v5, 0x140

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->BusinessBots:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Business/ChatbotsActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$1;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v4, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v6, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v4, v2, v6}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity;->checkDone(Z)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    :goto_0
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v8, 0x2c000

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v8, 0x6

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v8, Lorg/telegram/messenger/R$string;->BusinessBotLink:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x41980000    # 19.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Business/ChatbotsActivity$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$2;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v13, 0x41a80000    # 21.0f

    const/high16 v14, 0x41700000    # 15.0f

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x30

    const/high16 v11, 0x41a80000    # 21.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextDivider:Landroid/view/View;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->editTextDivider:Landroid/view/View;

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v12, v10, v9

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v10, 0x15

    if-eqz v9, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/16 v11, 0x15

    :goto_1
    int-to-float v14, v11

    if-eqz v9, :cond_2

    const/16 v2, 0x15

    :cond_2
    int-to-float v2, v2

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/16 v13, 0x57

    const/4 v15, 0x0

    move/from16 v16, v2

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Business/ChatbotsActivity$3;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->BusinessBotNotFound:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewText:Landroid/widget/TextView;

    const/4 v8, -0x2

    const/16 v9, 0x11

    invoke-static {v8, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Business/ChatbotsActivity$4;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Business/ChatbotsActivity$4;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;I)V

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    invoke-static {v8, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->emptyViewLoading:Landroid/widget/ImageView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotsInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->introText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->introText:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, 0x1

    const/16 v8, 0x21

    invoke-virtual {v5, v2, v1, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->searchHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$5;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    new-instance v1, Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    iget-object v2, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-nez v2, :cond_4

    move-object v2, v7

    goto :goto_2

    :cond_4
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->recipients:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->setValue(Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;)V

    new-instance v1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    new-instance v3, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-direct {v1, v0, v2, v3, v7}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v1, v0, Lorg/telegram/ui/Business/ChatbotsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v4
.end method

.method public hasChanges()Z
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->valueSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->selectedBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->currentBot:Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eq v3, v5, :cond_3

    return v2

    :cond_3
    const-wide/16 v5, 0x0

    if-nez v0, :cond_4

    move-wide v7, v5

    goto :goto_2

    :cond_4
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->bot_id:J

    :goto_3
    cmp-long v3, v7, v5

    if-eqz v3, :cond_6

    return v2

    :cond_6
    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    iget-object v3, v4, Lorg/telegram/tgnet/tl/TL_account$TL_connectedBot;->rights:Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRights;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity;->recipientsHelper:Lorg/telegram/ui/Business/BusinessRecipientsHelper;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Business/BusinessRecipientsHelper;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public onBackPressed()Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->hasChanges()Z

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

    sget v1, Lorg/telegram/messenger/R$string;->BusinessBotUnsavedChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/ChatbotsActivity;)V

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

    invoke-direct {p0}, Lorg/telegram/ui/Business/ChatbotsActivity;->setValue()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method
