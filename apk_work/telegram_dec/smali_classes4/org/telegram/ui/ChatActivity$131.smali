.class Lorg/telegram/ui/ChatActivity$131;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cachedHeights:Landroid/util/SparseIntArray;

.field final synthetic val$cachedViews:Landroid/util/SparseArray;

.field final synthetic val$counters:Ljava/util/List;

.field final synthetic val$finalCount:I

.field final synthetic val$foregroundIndex:[I

.field final synthetic val$head:I

.field final synthetic val$message:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$pager:Landroidx/viewpager/widget/ViewPager;

.field final synthetic val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field final synthetic val$primaryMessage:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$reactedView:Lorg/telegram/ui/Components/ReactedHeaderView;

.field final synthetic val$showAllReactionsTab:Z

.field final synthetic val$size:I


# direct methods
.method public static synthetic $r8$lambda$TWrpO2MWE0zbgD1W-zcledcXufE(Landroid/util/SparseIntArray;IILandroidx/viewpager/widget/ViewPager;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[ILorg/telegram/ui/Components/ReactedUsersListView;I)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/ChatActivity$131;->lambda$instantiateItem$2(Landroid/util/SparseIntArray;IILandroidx/viewpager/widget/ViewPager;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[ILorg/telegram/ui/Components/ReactedUsersListView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VA1qVk7Qfa24LVT_6mpZwIxq_8U(Lorg/telegram/ui/ChatActivity$131;Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$131;->lambda$instantiateItem$0(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpse1vywNniQ0pStD69xiFyDkbc(Lorg/telegram/ui/ChatActivity$131;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$131;->lambda$instantiateItem$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILandroid/util/SparseArray;ZLjava/util/List;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactedHeaderView;Lorg/telegram/messenger/MessageObject;Landroid/util/SparseIntArray;ILandroidx/viewpager/widget/ViewPager;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$131;->val$size:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$131;->val$cachedViews:Landroid/util/SparseArray;

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$131;->val$showAllReactionsTab:Z

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$131;->val$counters:Ljava/util/List;

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$131;->val$message:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/ui/ChatActivity$131;->val$reactedView:Lorg/telegram/ui/Components/ReactedHeaderView;

    iput-object p8, p0, Lorg/telegram/ui/ChatActivity$131;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    iput-object p9, p0, Lorg/telegram/ui/ChatActivity$131;->val$cachedHeights:Landroid/util/SparseIntArray;

    iput p10, p0, Lorg/telegram/ui/ChatActivity$131;->val$head:I

    iput-object p11, p0, Lorg/telegram/ui/ChatActivity$131;->val$pager:Landroidx/viewpager/widget/ViewPager;

    iput-object p12, p0, Lorg/telegram/ui/ChatActivity$131;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object p13, p0, Lorg/telegram/ui/ChatActivity$131;->val$foregroundIndex:[I

    iput p14, p0, Lorg/telegram/ui/ChatActivity$131;->val$finalCount:I

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V
    .locals 6

    new-instance p1, Lorg/telegram/ui/ChatActivity$131$1;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$131$1;-><init>(Lorg/telegram/ui/ChatActivity$131;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChatActivity;->access$54200(Lorg/telegram/ui/ChatActivity;Z)V

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$instantiateItem$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-lez p5, :cond_0

    const-string p5, "user_id"

    :goto_0
    invoke-virtual {p2, p5, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    neg-long p3, p3

    const-string p5, "chat_id"

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string p3, "report_reaction_message_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    const-string p1, "report_reaction_from_dialog_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    return-void
.end method

.method private static synthetic lambda$instantiateItem$2(Landroid/util/SparseIntArray;IILandroidx/viewpager/widget/ViewPager;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[ILorg/telegram/ui/Components/ReactedUsersListView;I)V
    .locals 0

    add-int/2addr p2, p7

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    if-ne p0, p1, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p5, p1

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setNewForegroundHeight(IIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$131;->val$size:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->val$cachedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$131;->val$showAllReactionsTab:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$131;->val$counters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$131;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$54100(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$131;->val$message:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Components/ReactedUsersListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$131;->val$reactedView:Lorg/telegram/ui/Components/ReactedHeaderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactedHeaderView;->getSeenUsers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactedUsersListView;->setSeenUsers(Ljava/util/List;)Lorg/telegram/ui/Components/ReactedUsersListView;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$131;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactedUsersListView;->setOnCustomEmojiSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$131;->val$primaryMessage:Lorg/telegram/messenger/MessageObject;

    new-instance v3, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$131;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReactedUsersListView;->setOnProfileSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$131;->val$cachedHeights:Landroid/util/SparseIntArray;

    iget v5, p0, Lorg/telegram/ui/ChatActivity$131;->val$head:I

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$131;->val$pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$131;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$131;->val$foregroundIndex:[I

    new-instance v9, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda2;

    move-object v2, v9

    move v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity$131$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseIntArray;IILandroidx/viewpager/widget/ViewPager;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[I)V

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/ReactedUsersListView;->setOnHeightChangedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;

    move-result-object v1

    if-gez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ChatActivity$131;->val$finalCount:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactedUsersListView;->setPredictiveCount(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$131;->val$reactedView:Lorg/telegram/ui/Components/ReactedHeaderView;

    new-instance v2, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda226;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda226;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactedHeaderView;->setSeenCallback(Landroidx/core/util/Consumer;)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$131;->val$cachedViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
