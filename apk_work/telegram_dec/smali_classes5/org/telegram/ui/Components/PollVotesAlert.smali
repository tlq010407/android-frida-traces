.class public Lorg/telegram/ui/Components/PollVotesAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PollVotesAlert$Adapter;,
        Lorg/telegram/ui/Components/PollVotesAlert$VotesList;,
        Lorg/telegram/ui/Components/PollVotesAlert$Button;,
        Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;,
        Lorg/telegram/ui/Components/PollVotesAlert$UserCell;
    }
.end annotation


# static fields
.field public static final USER_CELL_PROPERTY:Landroid/util/Property;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private gradientWidth:F

.field private listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingMore:Ljava/util/HashSet;

.field private loadingResults:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private placeholderGradient:Landroid/graphics/LinearGradient;

.field private placeholderMatrix:Landroid/graphics/Matrix;

.field private placeholderPaint:Landroid/graphics/Paint;

.field private poll:Lorg/telegram/tgnet/TLRPC$Poll;

.field private queries:Ljava/util/ArrayList;

.field private rect:Landroid/graphics/RectF;

.field private scrollOffsetY:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

.field private totalTranslation:F

.field private voters:Ljava/util/ArrayList;

.field private votesPercents:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$-ELxWek24pA4wEnSozq61an4024(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0hIiwE_w-onp0gY_a49evFwEBUo(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$2(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQIb_wws-2uU5VAs1x2U4THvRXQ(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$updateButtons$5(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YG2Qc2loFgBZjAKpZk38P25AZmA(Lorg/telegram/ui/Components/PollVotesAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    return-void
.end method

.method public static synthetic $r8$lambda$fJaLbHZ3VkuqPQUElY7WSPlYVWg(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jXJm41awHRdbpkPtvBfevWhefQQ(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oQcZ0biHtsQbLrAW1dga0Z5iaqs(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$1;

    const-string v1, "placeholderAlpha"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PollVotesAlert$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/PollVotesAlert;->USER_CELL_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v9, 0x1

    invoke-direct {v7, v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    iput-boolean v9, v7, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v8, v7, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v14, v13, [Ljava/lang/Integer;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v13, :cond_5

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-nez v0, :cond_0

    move/from16 v17, v6

    move/from16 p2, v13

    goto/16 :goto_5

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;-><init>()V

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteInputOption;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteInputOption;-><init>()V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-ge v1, v2, :cond_3

    const-string v1, "empty"

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->count:I

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-gt v0, v3, :cond_4

    const/16 v2, 0xf

    goto :goto_4

    :cond_4
    const/16 v2, 0xa

    :goto_4
    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    or-int/2addr v0, v9

    iput v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v3, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v9, v3

    move v3, v6

    move/from16 p2, v13

    move-object v13, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object v5, v12

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    invoke-virtual {v13, v15, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v17

    iget-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v17, 0x1

    move/from16 v13, p2

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/PollVotesAlert$2;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$3;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$3;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$4;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PollVotesAlert$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v7, v4, v5, v1}, Lorg/telegram/ui/Components/PollVotesAlert$5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-direct {v1, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/PollVotesAlert$6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_7

    iget-object v3, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6

    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v5, :cond_6

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_6

    move-object v0, v3

    :cond_6
    iget-object v3, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    iget-object v5, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v5, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$7;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$7;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PollResults:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v0, :cond_8

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Answer"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Vote"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :goto_7
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/PollVotesAlert$8;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PollVotesAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return p0
.end method

.method static synthetic access$3116(Lorg/telegram/ui/Components/PollVotesAlert;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return v0
.end method

.method static synthetic access$3124(Lorg/telegram/ui/Components/PollVotesAlert;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/LinearGradient;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/PollVotesAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method private synthetic lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_d

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    const/4 p6, 0x1

    if-ge p2, p1, :cond_5

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v5, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iget v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iget v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    if-ne v1, v2, :cond_1

    iget-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 p3, 0x1

    :cond_2
    iget p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iput p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_b

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p1, :cond_9

    iget-object p5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    instance-of v0, p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    check-cast p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    invoke-static {p5, p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$5102(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p5, p6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$5102(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_a
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    goto :goto_6

    :cond_b
    :goto_5
    if-eqz p3, :cond_c

    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_e
    :goto_6
    return-void
.end method

.method private synthetic lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance p7, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 6

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p2

    sub-int/2addr p2, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p3

    sub-int/2addr p3, v2

    if-lez p3, :cond_5

    if-gez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    const/16 v0, 0x32

    if-eqz p3, :cond_4

    iget p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    iget-object v3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    iget p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    add-int/2addr p1, v0

    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p1, p3, :cond_3

    iput-boolean v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    return-void

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    iget-object v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    or-int/lit8 v0, v0, 0x3

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    iget-object v0, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->offset:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_4

    :cond_5
    :goto_0
    return-void

    :cond_6
    instance-of p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4900(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-nez p3, :cond_7

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$5000(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    :cond_7
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4900(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4900(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v0, "user_id"

    :goto_1
    invoke-virtual {p3, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_8
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$5000(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v0, "chat_id"

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4900(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4900(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v3, p2

    if-nez v5, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$5000(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v5, v3, p2

    if-nez v5, :cond_a

    :goto_3
    const/4 v1, 0x1

    :cond_a
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_b
    :goto_4
    return-void
.end method

.method private static synthetic lambda$updateButtons$5(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static showForPoll(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateButtons()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    new-instance v12, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/PollVotesAlert$Button;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$1;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget-object v5, v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-static {v5, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3902(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    iget v5, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    int-to-float v5, v5

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v5, v5, v10

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4002(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)F

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4102(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4100(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4024(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)F

    if-nez v8, :cond_0

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4100(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v8

    goto :goto_2

    :cond_0
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4100(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4100(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    if-eq v8, v5, :cond_1

    const/4 v7, 0x1

    :cond_1
    :goto_2
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4100(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4100(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4112(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private updateLayout(Z)V
    .locals 10

    const/4 p1, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lt v1, v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v2, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v2, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    new-array v9, p1, [F

    aput v8, v9, v0

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    if-eqz v2, :cond_8

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_8
    new-array v2, p1, [F

    aput v6, v2, v0

    invoke-static {v8, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v4, v5, v0

    aput-object v2, v5, p1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PollVotesAlert$9;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method private updatePlaceholder()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    iput v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    filled-new-array {v1, v0, v1}, [I

    move-result-object v8

    const/4 v0, 0x3

    new-array v9, v0, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e3851ec    # 0.18f
        0x3eb851ec    # 0.36f
    .end array-data
.end method


# virtual methods
.method public animateSectionUpdates(Landroid/view/View;)V
    .locals 12

    const/4 v0, -0x2

    const/4 v1, -0x2

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    if-ne v1, v0, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_8

    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v9, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v8, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    iget-boolean v8, v6, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v8, :cond_4

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v6, :cond_4

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-nez v3, :cond_5

    const-string v5, ""

    :goto_5
    move-object v6, v5

    goto :goto_6

    :cond_5
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    goto :goto_5

    :goto_6
    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_7
    move-object v7, v3

    goto :goto_8

    :cond_6
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    goto :goto_7

    :goto_8
    iget-object v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v8

    iget v9, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v10

    const/4 v11, 0x1

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/CharSequence;Ljava/util/ArrayList;IIIZ)V

    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_a

    :cond_7
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->relayoutPinnedHeader()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public calcPercent([B)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_1

    iget v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v2, v5

    iget-object v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v4, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_3

    return v0

    :cond_3
    int-to-float p1, v3

    int-to-float v0, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissInternal()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 47

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    new-array v4, v10, [Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x0

    aput-object v3, v4, v20

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v2

    move-object/from16 v17, v4

    move/from16 v19, v29

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v28, v29

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/16 v17, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v28, v38

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    move-object v12, v2

    move/from16 v19, v38

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-class v13, Landroid/view/View;

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v13, v5, v20

    const/4 v4, 0x0

    move-object v2, v12

    move-object v9, v11

    const/4 v14, 0x1

    move/from16 v10, v29

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v13, v5, v20

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const-class v4, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v20

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v29, v7

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v20

    const-string v8, "middleTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    move/from16 v34, v7

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v20

    const-string v8, "righTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v41, v5, v7

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v20

    sget v46, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-object/from16 v42, v5

    invoke-direct/range {v39 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    aput-object v5, v4, v20

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v13, v4, v20

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v20

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v33

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v5

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v4, v5, v20

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
