.class Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;
.super Lorg/telegram/ui/Components/EditTextEmoji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final synthetic val$blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iput-object p8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->val$blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected allowSearch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createEmojiView()V
    .locals 4

    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextStyle()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextStyle()I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    instance-of v2, v2, Lorg/telegram/ui/Components/CaptionPhotoViewer;

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iput v3, v0, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawEmojiBackground(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->val$blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v3, 0x7

    move-object/from16 v9, p2

    invoke-direct {v1, v2, v9, v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->blurDrawer:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v11, v1

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    goto :goto_1

    :cond_1
    move-object/from16 v9, p2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/RectF;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x3f733333    # 0.95f

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$100(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    :goto_1
    return-void
.end method

.method protected onEmojiKeyboardUpdate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    return-void
.end method

.method protected onScrollYChange(I)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->goingToScrollY:I

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->waitingForScrollYChange:Z

    if-eqz v2, :cond_3

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->waitingForScrollYChange:Z

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeScrollY:I

    if-eq v2, p1, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->goingToScrollY:I

    if-eq p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeScrollY:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollY(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeScrollY:I

    iput p1, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->goingToScrollY:I

    filled-new-array {v4, p1}, [I

    move-result-object p1

    const-string v3, "scrollY"

    invoke-static {v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$202(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0xf0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1$1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected onWaitingForKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    return-void
.end method

.method protected updatedEmojiExpanded()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    return-void
.end method
