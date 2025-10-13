.class public Lorg/telegram/ui/TooManyCommunitiesActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;,
        Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

.field private buttonAnimation:I

.field private buttonHeight:I

.field private buttonLayout:Landroid/widget/FrameLayout;

.field private buttonTextView:Landroid/widget/TextView;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private enterAnimator:Landroid/animation/ValueAnimator;

.field private enterProgress:F

.field private hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

.field private inactiveChats:Ljava/util/ArrayList;

.field private inactiveChatsSignatures:Ljava/util/ArrayList;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field protected progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private searchAdapter:Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

.field private searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchViewContainer:Landroid/widget/FrameLayout;

.field private selectedIds:Ljava/util/Set;

.field showProgressRunnable:Ljava/lang/Runnable;

.field type:I


# direct methods
.method public static synthetic $r8$lambda$0z4PeaLa4oLXfIQ0xnPVJY4IWAM(Lorg/telegram/ui/TooManyCommunitiesActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PXKlypM9ZTmyqpCOqUaWQH8i8w(Lorg/telegram/ui/TooManyCommunitiesActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$loadInactiveChannels$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kp9S4PEqwSmBtN26GGL7ouC6WSQ(Lorg/telegram/ui/TooManyCommunitiesActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X2KMBtJfss2eF4nR9BzBPXkBeYo(Lorg/telegram/ui/TooManyCommunitiesActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$loadInactiveChannels$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_230kfCGx1Cqr62UDIznRs2EaBs(Lorg/telegram/ui/TooManyCommunitiesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGOptKgGiIlbYwODuZLirnHpaxY(Lorg/telegram/ui/TooManyCommunitiesActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$loadInactiveChannels$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1s6JwOQe19SxWXhhDl0pLNg9NE(Lorg/telegram/ui/TooManyCommunitiesActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->lambda$getThemeDescriptions$6()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChatsSignatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    new-instance v0, Lorg/telegram/ui/TooManyCommunitiesActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$1;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->showProgressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    new-instance v0, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChatsSignatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchAdapter:Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/TooManyCommunitiesActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonAnimation:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/TooManyCommunitiesActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/TooManyCommunitiesActivity;Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;)Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/TooManyCommunitiesActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterProgress:F

    return p0
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v4, v5, v6, p1}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$6()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v0, v0, [F

    const/high16 v4, 0x40800000    # 4.0f

    aput v4, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$3(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterProgress:F

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    iget v2, v2, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->headerPosition:I

    if-lt v1, v2, :cond_0

    if-lez v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterProgress:F

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->inactiveChats:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterProgress:F

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->showProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/TooManyCommunitiesActivity$8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$8;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$loadInactiveChannels$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    const/4 v0, 0x2

    const/16 v1, 0x16d

    const/16 v2, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v7, v8

    const v8, 0x15180

    div-int/2addr v7, v8

    if-ge v7, v2, :cond_0

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "Days"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    if-ge v7, v1, :cond_1

    div-int/2addr v7, v2

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "Months"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    div-int/2addr v7, v1

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "Years"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    const-string v9, "InactiveChatSignature"

    const-string v10, "Members"

    if-eqz v8, :cond_2

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v6, v10, v4

    aput-object v7, v10, v3

    invoke-static {v9, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v6, Lorg/telegram/messenger/R$string;->InactiveChannelSignature:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "InactiveChannelSignature"

    invoke-static {v7, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v6, v10, v4

    aput-object v7, v10, v3

    invoke-static {v9, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :goto_3
    add-int/2addr v5, v3

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 6

    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v2, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->onSelectedCountChange()V

    iget-object p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    if-ge v0, p1, :cond_2

    sub-int/2addr p1, v0

    invoke-virtual {p2, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private loadInactiveChannels()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->enterProgress:F

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->showProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onSelectedCountChange()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xc8

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonAnimation:I

    const/4 v8, -0x1

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iput v8, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonAnimation:I

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v8, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/TooManyCommunitiesActivity$6;

    invoke-direct {v8, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$6;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_0
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-eq v8, v9, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    if-ne v8, v9, :cond_3

    iget-object v9, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v0, v9, :cond_3

    :cond_1
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    invoke-virtual {v10}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->getItemCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-ne v8, v10, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v9, v8

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v9

    iget v10, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    if-gt v8, v10, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v9

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-ne v0, v8, :cond_5

    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonAnimation:I

    if-eq v0, v4, :cond_5

    iput v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonAnimation:I

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    iget v8, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TooManyCommunitiesActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$7;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v7, v7, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonHeight:I

    invoke-virtual {v0, v7, v7, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LeaveChats:I

    iget-object v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->selectedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v5, "Chats"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v7

    const-string v2, "LeaveChats"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->type:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->LimitReached:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/TooManyCommunitiesActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$2;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/TooManyCommunitiesActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$3;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    invoke-direct {v4, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    iput-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    invoke-direct {v4, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    iput-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchAdapter:Lorg/telegram/ui/TooManyCommunitiesActivity$SearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/TooManyCommunitiesActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$4;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v3, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v4, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->adapter:Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;

    invoke-virtual {v3}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->updateRows()V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->loadInactiveChannels()V

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Lorg/telegram/ui/TooManyCommunitiesActivity$5;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/TooManyCommunitiesActivity$5;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p1, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v1, v1, [F

    const/high16 v6, 0x40800000    # 4.0f

    aput v6, v1, v2

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x40

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 65

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/TooManyCommunitiesActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    move/from16 v19, v22

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    const-class v20, Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v20, v14, v21

    const-string v3, "imageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    const/16 v18, 0x0

    const/4 v13, 0x0

    move-object v11, v2

    move/from16 v19, v30

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    new-array v4, v9, [Ljava/lang/Class;

    aput-object v20, v4, v21

    const-string v5, "headerTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v20, v14, v21

    const-string v3, "messageTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v29, v18

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonLayout:Landroid/widget/FrameLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-array v5, v9, [Ljava/lang/Class;

    aput-object v4, v5, v21

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v13, v3, v5

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v4, v14, v21

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v21

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v29, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-class v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v3, v14, v21

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionText:I

    const/16 v18, 0x0

    move-object v11, v2

    move/from16 v19, v30

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v35

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move-object/from16 v34, v6

    move/from16 v39, v19

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v41, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v43

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v44, 0x0

    move-object/from16 v39, v2

    move-object/from16 v40, v4

    move-object/from16 v42, v6

    move/from16 v47, v8

    invoke-direct/range {v39 .. v47}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v35

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move-object/from16 v34, v6

    move/from16 v39, v44

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v47, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    const-string v54, "nameTextView"

    filled-new-array/range {v54 .. v54}, [Ljava/lang/String;

    move-result-object v49

    sget v55, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v50, 0x0

    move-object/from16 v45, v2

    move-object/from16 v46, v4

    move-object/from16 v48, v6

    move/from16 v53, v55

    invoke-direct/range {v45 .. v53}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v33, v6, v11

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    const-string v45, "statusTextView"

    filled-new-array/range {v45 .. v45}, [Ljava/lang/String;

    move-result-object v35

    sget v64, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move-object/from16 v34, v6

    move/from16 v39, v64

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v3, v14, v21

    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v11, v2

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v11, v9, [Ljava/lang/Class;

    aput-object v3, v11, v21

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    move-object/from16 v25, v11

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v3, v14, v21

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v2

    move-object/from16 v32, v5

    move-object/from16 v34, v6

    move/from16 v39, v8

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v38, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v40

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    move-object/from16 v36, v2

    move-object/from16 v37, v5

    move-object/from16 v39, v6

    invoke-direct/range {v36 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    filled-new-array/range {v54 .. v54}, [Ljava/lang/String;

    move-result-object v35

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v5

    move-object/from16 v34, v6

    move/from16 v39, v55

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v58, v6, v7

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    filled-new-array/range {v45 .. v45}, [Ljava/lang/String;

    move-result-object v60

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v61, 0x0

    move-object/from16 v56, v2

    move-object/from16 v57, v5

    move-object/from16 v59, v6

    invoke-direct/range {v56 .. v64}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v3, v6, v21

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move/from16 v29, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v11

    move-object v8, v10

    const/4 v13, 0x1

    move v9, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const/16 v27, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->buttonTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    move-object v2, v11

    move v9, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/TooManyCommunitiesActivity;->hintCell:Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    new-array v4, v13, [Ljava/lang/Class;

    aput-object v20, v4, v21

    const-string v5, "imageLayout"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v29, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
