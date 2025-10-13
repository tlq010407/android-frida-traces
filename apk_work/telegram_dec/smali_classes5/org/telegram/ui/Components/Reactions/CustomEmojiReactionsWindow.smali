.class public Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;
    }
.end annotation


# instance fields
.field private account:I

.field animatingEnterChild:Ljava/util/HashSet;

.field animators:Ljava/util/ArrayList;

.field attachToParent:Z

.field baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private cascadeAnimation:Z

.field public containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

.field private dismissProgress:F

.field private dismissed:Z

.field public drawingRect:Landroid/graphics/RectF;

.field enterTransitionFinished:Z

.field enterTransitionProgress:F

.field private frameDrawCount:I

.field fromRadius:F

.field fromRect:Landroid/graphics/RectF;

.field fromRectTranslateX:F

.field fromRectTranslateY:F

.field private invalidatePath:Z

.field isShowing:Z

.field keyboardHeight:F

.field location:[I

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onDismiss:Ljava/lang/Runnable;

.field private final pathToClipApi20:Landroid/graphics/Path;

.field reactions:Ljava/util/List;

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field public transition:Z

.field private final type:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private wasFocused:Z

.field windowManager:Landroid/view/WindowManager;

.field public windowView:Landroid/widget/FrameLayout;

.field yTranslation:F


# direct methods
.method public static synthetic $r8$lambda$-gI6B27v7ga7gF6spK17SCy4BYY(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateWindowPosition$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5TLQlCn9W1WbPEJMS5GHShyZcYE(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9f6Kg9IjYdk4Q9Bqq5LRv61sw0g(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$dismiss$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJ5-Ncz9SJbnuKIi5JfNBXNhPxU(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KulqskAUwsXPy6cwAiCj9ehY6p0(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qr-Qmh9OtQpTmYlLdn1MkzbiWAU(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$removeView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$iH7-iCGXhzjMLCg6qX89KRGcQHg(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateCascadeEnter$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nPRET6I7pKtulnzv3oHpkE57J_o(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$3(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yOlxLzKu6-EQw5AnyFz5wVp4ets(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$createTransition$5(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 27

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    const/4 v10, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClipApi20:Landroid/graphics/Path;

    const/4 v9, 0x2

    new-array v0, v9, [I

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iput v8, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    iput v13, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    iput-object v14, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactions:Ljava/util/List;

    iput-object v11, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v7, p6

    iput-object v7, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;

    invoke-direct {v0, v12, v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x5

    if-eq v13, v9, :cond_2

    const/4 v0, 0x4

    if-eq v13, v0, :cond_2

    if-eq v13, v5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-direct {v0, v12, v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getWindowType()I

    move-result v16

    new-instance v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;

    if-eq v13, v10, :cond_3

    const/16 v17, 0x1

    goto :goto_4

    :cond_3
    const/16 v17, 0x0

    :goto_4
    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v21, v4

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v19, v6

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, p6

    const/16 v16, 0x2

    move/from16 v9, v18

    move-object/from16 v10, p5

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    goto :goto_5

    :cond_4
    const/4 v1, 0x1

    :goto_5
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v2, v15, Lorg/telegram/ui/Components/ReactionsContainerLayout;->paused:Z

    iget-boolean v3, v15, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pausedExceptSelected:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setPaused(ZZ)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;

    invoke-direct {v2, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;

    invoke-direct {v2, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReactions(Ljava/util/HashSet;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDrawBackground(Z)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x5

    if-ne v13, v0, :cond_5

    const/4 v9, 0x2

    goto :goto_6

    :cond_5
    const/16 v9, 0x10

    :goto_6
    if-ne v13, v0, :cond_6

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_6
    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    iget-object v4, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    if-ne v13, v0, :cond_7

    const/16 v5, 0x55

    const/16 v22, 0x55

    goto :goto_7

    :cond_7
    const/16 v5, 0x30

    const/16 v22, 0x30

    :goto_7
    int-to-float v5, v9

    const/high16 v26, 0x41800000    # 16.0f

    const/16 v20, -0x1

    const/high16 v21, -0x40800000    # -1.0f

    move/from16 v23, v5

    move/from16 v24, v5

    move/from16 v25, v5

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eq v13, v1, :cond_8

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;

    invoke-direct {v4, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;)V

    :cond_9
    iget-boolean v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_a
    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    iput-object v4, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v5, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v5, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v4, v5, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    iput-object v15, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;

    invoke-direct {v3, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setOnSwitchedToLoopView(Ljava/lang/Runnable;)V

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    new-instance v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;

    invoke-direct {v3, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    const-wide/16 v4, 0x32

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-eq v13, v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateWindowPosition()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClipApi20:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return p0
.end method

.method static synthetic access$1108(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->showUnlockPremiumAlert()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContentPosition()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->checkAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)F
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getBlurOffset()F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    return p1
.end method

.method private checkAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->switchLayerType(Z)V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->disableHw()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidateViews()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->checkInitialization()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    :goto_0
    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowOpened()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resetBackgroundBitmaps()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_1
    return-void
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x3e8

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz p1, :cond_2

    const p1, 0x10100

    :goto_2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    :cond_2
    const p1, 0x10108

    goto :goto_2

    :goto_3
    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-object v0
.end method

.method private createTransition(Z)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v3, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iput v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRadius:F

    const/4 v3, 0x2

    new-array v4, v3, [I

    if-eqz p1, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v2, v2, v1

    aget v5, v4, v1

    sub-int/2addr v2, v5

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    if-eqz v5, :cond_1

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v5

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v2, v2, v1

    aget v5, v4, v1

    sub-int/2addr v2, v5

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    :cond_3
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x4

    if-ne v6, v1, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v10, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v10, v5

    invoke-virtual {v6, v10}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_6
    if-eq v6, v3, :cond_8

    if-ne v6, v9, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v0

    aget v10, v4, v0

    sub-int/2addr v6, v10

    :goto_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v0

    aget v7, v4, v0

    sub-int/2addr v6, v7

    const/high16 v7, 0x41900000    # 18.0f

    goto :goto_1

    :goto_3
    if-nez p1, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    goto :goto_4

    :cond_9
    iput v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v5, v5, v0

    aget v6, v4, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRectTranslateX:F

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v1

    aget v4, v4, v1

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    sub-float/2addr v4, v6

    iput v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRectTranslateY:F

    invoke-virtual {v2, v5, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    if-eqz p1, :cond_b

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-lt v2, v3, :cond_a

    const/16 v2, 0x2008

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    goto :goto_6

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    :goto_6
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v8, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(FZ)V

    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz p1, :cond_d

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->account:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->transition:Z

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v9, :cond_10

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    if-eqz p1, :cond_f

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_f
    new-array v3, v3, [F

    aput v2, v3, v0

    aput v8, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_8

    :cond_10
    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    if-eqz p1, :cond_11

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_11
    new-array v3, v3, [F

    aput v2, v3, v0

    aput v8, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/StableAnimator;->ofFloat([F)Lorg/telegram/ui/Components/StableAnimator;

    move-result-object v2

    :goto_8
    iput-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_12

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames()V

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    if-ne v2, v9, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1a4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_9
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_a

    :cond_13
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1c2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto :goto_9

    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_9

    :goto_a
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->switchLayerType(Z)V

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_b

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiReactionsBackground(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda7;-><init>(Landroid/animation/ValueAnimator;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    :goto_b
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    return-void
.end method

.method private getBlurOffset()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$createTransition$5(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContentPosition()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(FZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$dismiss$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V
    .locals 9

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    move v0, p3

    int-to-float v0, v0

    move v1, p4

    int-to-float v1, v1

    move v3, p5

    int-to-float v3, v3

    move v4, p6

    int-to-float v4, v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    move-object v8, p0

    iget-object v1, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float v4, v1, p7

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getBlurOffset()F

    move-result v1

    add-float v5, v1, p8

    const/16 v6, 0xff

    const/4 v7, 0x1

    const/4 v3, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    return-void
.end method

.method private synthetic lambda$removeView$7()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateCascadeEnter$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateWindowPosition$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method private setScaleForChild(Landroid/view/View;F)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setAnimatedScale(F)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showUnlockPremiumAlert()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private switchLayerType(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private syncReactionFrames()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_0

    iput-boolean v0, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    invoke-virtual {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCascadeEnter(FZ)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v7

    add-float/2addr v9, v10

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v9, v7

    if-lez v7, :cond_2

    cmpl-float v7, p1, v8

    if-eqz v7, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6, v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    add-float/2addr v6, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v6, v10

    if-gez v10, :cond_6

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    cmpl-float v6, p1, v8

    if-eqz v6, :cond_6

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0, v4, v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    const/4 v5, 0x1

    :goto_3
    add-int/2addr v3, v0

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_8
    if-eqz v2, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    const-wide/16 p1, 0x1a4

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_9
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2, p1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateContainersAlpha()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateContentPosition()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private updateWindowPosition()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowClosing()V

    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_2
    return-void
.end method

.method public dismiss(Z)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissWithAlpha()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$9;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_1
    return-void
.end method

.method public getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method public removeView()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
