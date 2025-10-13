.class Lorg/telegram/ui/Stories/PeerStoriesView$17;
.super Lorg/telegram/ui/Components/ChatActivityEnterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private chatActivityEnterViewAnimateFromTop:I

.field lastContentViewHeight:I

.field private messageEditTextAnimator:Landroid/animation/Animator;

.field messageEditTextPredrawHeigth:I

.field messageEditTextPredrawScrollY:I

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$CBbhSQJAtde5P1xktNveT1yFTeQ(Lorg/telegram/ui/Stories/PeerStoriesView$17;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_kJnQTB4dIY0j4hUodTIf9zmLzQ(Lorg/telegram/ui/Stories/PeerStoriesView$17;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Stories/PeerStoriesView$17;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/PeerStoriesView$17;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/PeerStoriesView$17;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/PeerStoriesView$17;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    return-object p0
.end method

.method private checkRecording()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->seekbarVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    return-void
.end method


# virtual methods
.method public checkAnimation()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->chatActivityEnterViewAnimateFromTop:I

    const/4 v4, 0x0

    const-wide/16 v5, 0xfa

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v2

    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v1, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v3, v3

    iget v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewEnterProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v9, v9

    mul-float v10, v10, v9

    add-float/2addr v3, v10

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topLineView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->animatedTop:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    int-to-float v3, v8

    new-array v8, v0, [F

    aput v3, v8, v4

    aput v7, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5602(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$17$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$17;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$17;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->chatActivityEnterViewAnimateFromTop:I

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->messageEditTextPredrawHeigth:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->messageEditTextPredrawScrollY:I

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v3, v8

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v8

    sub-float/2addr v8, v2

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v2

    new-array v0, v0, [F

    aput v2, v0, v4

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$17$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$17;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->messageEditTextAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->messageEditTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->lastContentViewHeight:I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayoutPaddingTranslationX:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v2, v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public extendActionMode(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    return-void
.end method

.method protected isRecordingStateChanged()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->checkRecording()V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldAnimateEditTextWithBounds:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->messageEditTextPredrawHeigth:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->messageEditTextPredrawScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->chatActivityEnterViewAnimateFromTop:I

    :cond_0
    return-void
.end method

.method protected sendMessageInternal(ZIJZ)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIJZ)Z

    move-result p1

    return p1
.end method

.method public setHorizontalPadding(FFZ)V
    .locals 2

    neg-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;

    move-result-object v1

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFZ)V

    return-void
.end method

.method protected showConfirmAlert(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected updateRecordInterface(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->checkRecording()V

    return-void
.end method
