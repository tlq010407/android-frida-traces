.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bulletinDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1$1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;->bulletinDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;->bulletinDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
