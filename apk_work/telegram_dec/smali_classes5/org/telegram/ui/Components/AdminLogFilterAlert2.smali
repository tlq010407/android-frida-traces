.class public Lorg/telegram/ui/Components/AdminLogFilterAlert2;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;
    }
.end annotation


# instance fields
.field private final actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private currentAdmins:Ljava/util/ArrayList;

.field private currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

.field private delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;

.field private isMegagroup:Z

.field private sectionMembersExpanded:Z

.field private sectionMessagesExpanded:Z

.field private sectionSettingsExpanded:Z

.field private selectedAdmins:Landroidx/collection/LongSparseArray;


# direct methods
.method public static synthetic $r8$lambda$8pVwlu6wcsT9MXnEEOr6VGJVklo(Lorg/telegram/ui/Components/AdminLogFilterAlert2;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$HcRcYALdH6_mI6ItT_7vWE8ECUU(Lorg/telegram/ui/Components/AdminLogFilterAlert2;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->lambda$getGroupClick$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_c0trDSi_v0wW3BmGqLIy8X0xM(Lorg/telegram/ui/Components/AdminLogFilterAlert2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;Z)V
    .locals 9

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setSlidingActionBar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setShowHandle(Z)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    iput-boolean p2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    :cond_1
    iput-boolean p4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p3, 0x15e

    invoke-virtual {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    invoke-direct {p2, p3, p4, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p2, p4, v0, v1, p3}, Landroid/view/View;->setPadding(IIII)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, p4, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p4, Lorg/telegram/messenger/R$string;->EventLogFilterApply:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance p4, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p4, 0x30

    const/16 v0, 0x57

    const/4 v1, -0x1

    invoke-static {v1, p4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x57

    move v3, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 p4, 0x42880000    # 68.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p2, p3, p1, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private getGroupClick(I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;I)V

    return-object v0
.end method

.method private getGroupCount(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const-string v2, "/3"

    if-eq p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    add-int/2addr v1, v3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    add-int/2addr v0, v1

    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-boolean v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v3, v4

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v4, :cond_8

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v4, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    add-int/2addr v3, v0

    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_5

    :cond_a
    const/4 v0, 0x3

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private synthetic lambda$getGroupClick$2(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 0

    iget-object p4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;F)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    if-eqz p1, :cond_0

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;->didSelectRights(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 9

    new-instance v8, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v8
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    iget-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterByActions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionMembers:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionSubscribers:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupCount(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    const/4 v4, 0x1

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-nez v3, :cond_4

    :cond_2
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-nez v3, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    xor-int/2addr v1, v4

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupClick(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    if-eqz p2, :cond_e

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-nez v3, :cond_6

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_9

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterNewRestrictions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v3, :cond_8

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v3, :cond_8

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v3, :cond_8

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_a

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterNewMembers:I

    goto :goto_7

    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterNewSubscribers:I

    :goto_7
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x5

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v3, :cond_c

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_d

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterLeavingMembers2:I

    goto :goto_a

    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterLeavingSubscribers2:I

    :goto_a
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_f

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionGroupSettings:I

    goto :goto_b

    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionChannelSettings:I

    :goto_b
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupCount(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3, p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v3, :cond_11

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-nez v3, :cond_11

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    if-nez v3, :cond_11

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    const/4 v1, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v1, 0x1

    :goto_d
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    xor-int/2addr v1, v4

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupClick(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    if-eqz p2, :cond_15

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_12

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterGroupInfo:I

    goto :goto_e

    :cond_12
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterChannelInfo:I

    :goto_e
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x8

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v3, :cond_14

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v1, :cond_13

    goto :goto_f

    :cond_13
    const/4 v1, 0x0

    goto :goto_10

    :cond_14
    :goto_f
    const/4 v1, 0x1

    :goto_10
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterInvites:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x9

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterCalls:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupCount(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    invoke-static {v3, p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-nez v3, :cond_17

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-nez v3, :cond_17

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v1, :cond_16

    goto :goto_11

    :cond_16
    const/4 v1, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    const/4 v1, 0x1

    :goto_12
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    xor-int/2addr v1, v4

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupClick(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    if-eqz p2, :cond_18

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterDeletedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xc

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterEditedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xd

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterPinnedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xe

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterByAdmins:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterByAdminsAll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xf

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez v1, :cond_19

    const/4 v1, 0x0

    goto :goto_13

    :cond_19
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    :goto_13
    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_14

    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_14
    if-lt v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_15

    :cond_1b
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz p2, :cond_1d

    const/4 p2, 0x0

    :goto_16
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1d

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    rsub-int/lit8 v5, p2, -0x1

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/UItem;->asUserCheckbox(ILorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz v5, :cond_1c

    invoke-virtual {v5, v1, v2}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_17

    :cond_1c
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_1d
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->EventLog:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;F)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x0

    const/16 v2, 0x29

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/16 v4, 0x23

    if-ne v0, v4, :cond_a

    :cond_1
    if-ne v0, v2, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42700000    # 60.0f

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_3

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-nez p3, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_4
    iget v2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p3, :cond_5

    new-instance p3, Landroidx/collection/LongSparseArray;

    invoke-direct {p3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->clear()V

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    goto/16 :goto_5

    :pswitch_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    goto/16 :goto_5

    :pswitch_3
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    :goto_3
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    goto/16 :goto_5

    :pswitch_4
    if-eqz p3, :cond_6

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    goto/16 :goto_5

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    goto :goto_3

    :pswitch_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    goto/16 :goto_5

    :pswitch_6
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    goto :goto_5

    :pswitch_7
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    :goto_4
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    goto :goto_5

    :pswitch_8
    if-eqz p3, :cond_7

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    goto :goto_5

    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    goto :goto_4

    :pswitch_9
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    goto :goto_5

    :pswitch_a
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    goto :goto_5

    :pswitch_b
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    goto :goto_5

    :pswitch_c
    if-eqz p3, :cond_8

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    goto :goto_5

    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v2

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p3, :cond_9

    :pswitch_d
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    :cond_9
    :goto_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_a
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-gez p1, :cond_e

    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    neg-int p1, p1

    sub-int/2addr p1, v3

    if-ltz p1, :cond_e

    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_b

    goto :goto_7

    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p3, :cond_c

    new-instance p3, Landroidx/collection/LongSparseArray;

    invoke-direct {p3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    :cond_c
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, v4, v5}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    invoke-virtual {p2, v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_6

    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, v4, v5, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    nop

    :cond_e
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSmoothContainerViewLayout(F)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onSmoothContainerViewLayout(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setAdminLogFilterAlertDelegate(Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;

    return-void
.end method

.method public setCurrentAdmins(Ljava/util/ArrayList;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method
