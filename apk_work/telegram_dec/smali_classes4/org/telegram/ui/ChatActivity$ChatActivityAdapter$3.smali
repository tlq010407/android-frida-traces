.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraRect()Lorg/telegram/ui/Components/Rect;

    move-result-object v6

    iget v7, v6, Lorg/telegram/ui/Components/Rect;->width:F

    div-float/2addr v5, v7

    new-array v7, v1, [I

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v8

    iput-boolean v4, v8, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->ignoreAlpha:Z

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAlpha(F)V

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v7, v2

    int-to-float v8, v8

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAnimationOffsetX()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v7, v2

    aget v8, v7, v4

    int-to-float v8, v8

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v7, v4

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraContainer()Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setPivotY(F)V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/InstantCameraView;->cancelBlur()V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v4, [F

    aput v5, v12, v2

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v4, [F

    aput v5, v13, v2

    invoke-static {v8, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    aget v13, v7, v4

    int-to-float v13, v13

    iget v14, v6, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v13, v14

    new-array v14, v4, [F

    aput v13, v14, v2

    invoke-static {v8, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/InstantCameraView;->getSwitchButtonView()Landroid/view/View;

    move-result-object v13

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v4, [F

    aput v9, v15, v2

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/InstantCameraView;->getFlashButtonView()Landroid/view/View;

    move-result-object v15

    new-array v1, v4, [F

    aput v9, v1, v2

    invoke-static {v15, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/InstantCameraView;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    sget-object v9, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    filled-new-array {v2}, [I

    move-result-object v4

    invoke-static {v15, v9, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/InstantCameraView;->getMuteImageView()Landroid/view/View;

    move-result-object v9

    const/4 v15, 0x1

    new-array v0, v15, [F

    const/16 v16, 0x0

    aput v16, v0, v2

    invoke-static {v9, v14, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v9, 0x7

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v11, v9, v2

    aput-object v5, v9, v15

    const/4 v5, 0x2

    aput-object v12, v9, v5

    const/4 v5, 0x3

    aput-object v13, v9, v5

    const/4 v5, 0x4

    aput-object v1, v9, v5

    const/4 v1, 0x5

    aput-object v4, v9, v1

    const/4 v1, 0x6

    aput-object v0, v9, v1

    invoke-virtual {v10, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    aget v1, v7, v2

    int-to-float v1, v1

    iget v4, v6, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v1, v4

    const/4 v4, 0x1

    new-array v5, v4, [F

    aput v1, v5, v2

    invoke-static {v8, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    aput-object v10, v1, v4

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/InstantCameraView;->setIsMessageTransition(Z)V

    :cond_1
    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3$1;

    invoke-direct {v1, v0, v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return v4
.end method
