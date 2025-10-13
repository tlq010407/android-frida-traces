.class public Lorg/telegram/ui/Components/HashtagActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private chatContainer:Lorg/telegram/ui/ChatActivityContainer;

.field private contentView:Landroid/widget/FrameLayout;

.field private contentViewAnimator:Landroid/animation/ValueAnimator;

.field private contentViewValue:F

.field private final hashtag:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

.field private final storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

.field private storiesTotal:Landroid/widget/FrameLayout;

.field private storiesTotalTextView:Landroid/widget/TextView;

.field private storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

.field private storiesVisible:Z

.field private transitAnimator:Landroid/animation/ValueAnimator;

.field private transitValue:F

.field private final username:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$GLQPBFBN7q_i4Pt0IeAmxM4mCuQ(Lorg/telegram/ui/Components/HashtagActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HashtagActivity;->lambda$updateStoriesVisible$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$IY1wmhXvyQbc4zldrYMRdtrBB_E(Lorg/telegram/ui/Components/HashtagActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HashtagActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/HashtagActivity;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string p2, ""

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->query:Ljava/lang/String;

    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HashtagActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HashtagActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/HashtagActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewValue:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/HashtagActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewValue:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/HashtagActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitValue:F

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/HashtagActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitValue:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/ChatActivityContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->chatContainer:Lorg/telegram/ui/ChatActivityContainer;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesVisible:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/HashtagActivity;->transit(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesVisible:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->transition(Z)V

    return-void
.end method

.method private synthetic lambda$updateStoriesVisible$1(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private transit(ZZ)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_7

    iput-boolean p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesVisible:Z

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitValue:F

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const v3, 0x3f733333    # 0.95f

    if-eqz p1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v4, 0x3f733333    # 0.95f

    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz p1, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v4, 0x3f733333    # 0.95f

    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->chatContainer:Lorg/telegram/ui/ChatActivityContainer;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagesSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_6

    iget p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitValue:F

    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->chatContainer:Lorg/telegram/ui/ChatActivityContainer;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagesSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitValue:F

    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_6
    return-void

    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesVisible:Z

    if-ne p2, p1, :cond_8

    return-void

    :cond_8
    iput-boolean p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesVisible:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitValue:F

    if-eqz p1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v0

    const/4 p2, 0x1

    aput v1, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HashtagActivity$8;-><init>(Lorg/telegram/ui/Components/HashtagActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/HashtagActivity$9;-><init>(Lorg/telegram/ui/Components/HashtagActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->transitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateStoriesVisible(ZZ)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    const/4 v2, 0x0

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Components/HashtagActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/HashtagActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/HashtagActivity;Z)V

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v3, 0x140

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewValue:F

    if-eqz p1, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_7
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput p2, v5, v0

    const/4 p2, 0x1

    aput v2, v5, p2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HashtagActivity$6;-><init>(Lorg/telegram/ui/Components/HashtagActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/HashtagActivity$7;-><init>(Lorg/telegram/ui/Components/HashtagActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->contentViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v15, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v15, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/HashtagActivity$1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/HashtagActivity$1;-><init>(Lorg/telegram/ui/Components/HashtagActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v15, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity$2;

    invoke-direct {v0, v15, v14}, Lorg/telegram/ui/Components/HashtagActivity$2;-><init>(Lorg/telegram/ui/Components/HashtagActivity;Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->contentView:Landroid/widget/FrameLayout;

    const/4 v8, -0x1

    const/16 v7, 0x77

    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/HashtagSearchController;->clearSearchResults(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "chatMode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "searchType"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->query:Ljava/lang/String;

    const-string v2, "searchHashtag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/ui/Components/HashtagActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-direct {v1, v15, v14, v2, v0}, Lorg/telegram/ui/Components/HashtagActivity$3;-><init>(Lorg/telegram/ui/Components/HashtagActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/os/Bundle;)V

    iput-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->chatContainer:Lorg/telegram/ui/ChatActivityContainer;

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/HashtagActivity$5;

    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    new-instance v4, Lorg/telegram/ui/Components/HashtagActivity$4;

    invoke-direct {v4, v15}, Lorg/telegram/ui/Components/HashtagActivity$4;-><init>(Lorg/telegram/ui/Components/HashtagActivity;)V

    iget-object v2, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v24, v2

    move-object/from16 v2, p1

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v3, v18

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v28, v9

    move-object/from16 v9, v23

    move/from16 v10, v16

    move/from16 v29, v11

    move-object/from16 v11, p0

    move/from16 v30, v12

    move-object/from16 v12, v26

    move/from16 v13, v17

    move-object/from16 v14, v24

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/HashtagActivity$5;-><init>(Lorg/telegram/ui/Components/HashtagActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, v27

    iput-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v3, v29

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    move/from16 v2, v30

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateStoriesList(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    new-instance v0, Landroid/widget/FrameLayout;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    iget-object v4, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v10, 0x0

    const/high16 v11, 0x42440000    # 49.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotal:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotalTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotalTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotalTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelText:I

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotalTextView:Landroid/widget/TextView;

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->getCount()I

    move-result v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "FoundStories"

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotal:Landroid/widget/FrameLayout;

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotalTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x13

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v5, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotal:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v7, 0x37

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotal:Landroid/widget/FrameLayout;

    const/16 v5, 0x31

    const/16 v6, 0x57

    const/4 v8, -0x1

    invoke-static {v8, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->sharedMediaLayoutContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x77

    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget-object v1, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    new-instance v1, Lorg/telegram/ui/Components/HashtagActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/HashtagActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/HashtagActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget-object v1, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->set(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)Z

    move-result v0

    invoke-direct {v15, v0, v4}, Lorg/telegram/ui/Components/HashtagActivity;->updateStoriesVisible(ZZ)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget v1, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/HashtagSearchController;->getCount(I)I

    move-result v1

    iget-object v2, v15, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    iget-object v3, v15, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->setMessages(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    const/16 v1, 0x30

    invoke-static {v8, v1, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v15, v4, v4}, Lorg/telegram/ui/Components/HashtagActivity;->transit(ZZ)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    aget-object p1, p3, v1

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->set(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/HashtagActivity;->updateStoriesVisible(ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesTotalTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->getCount()I

    move-result p2

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "FoundStories"

    invoke-static {v0, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity;->chatContainer:Lorg/telegram/ui/ChatActivityContainer;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->chatContainer:Lorg/telegram/ui/ChatActivityContainer;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p2

    if-eq p1, p2, :cond_3

    return-void

    :cond_3
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesView:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/HashtagActivity;->hashtag:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity;->username:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->setMessages(ILjava/lang/String;Ljava/lang/String;)V

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method public isLightStatusBar()Z
    .locals 6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onFragmentCreate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->attachedSearchLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    const/4 v1, 0x1

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->attachedSearchLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
