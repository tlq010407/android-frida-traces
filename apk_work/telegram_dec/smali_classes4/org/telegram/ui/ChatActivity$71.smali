.class Lorg/telegram/ui/ChatActivity$71;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createPinnedMessageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastY:F

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$wvazYF0_SVgWgnY9hRYSro5_8SU(Lorg/telegram/ui/ChatActivity$71;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$71;->lambda$new$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    new-instance p1, Lorg/telegram/ui/ChatActivity$71$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$71$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$71;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ChatActivity$71;->lastY:F

    iput p1, p0, Lorg/telegram/ui/ChatActivity$71;->startY:F

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$35200(Lorg/telegram/ui/ChatActivity;Z)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/PinnedLineView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v1

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$35100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$35000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/PinnedLineView;

    move-result-object p4

    if-ne p2, p4, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return p3
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$34800(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$34900(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$34900(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$34900(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$34802(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$71;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$71;->startY:F

    iget v1, p0, Lorg/telegram/ui/ChatActivity$71;->lastY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$71;->lastY:F

    iput v0, p0, Lorg/telegram/ui/ChatActivity$71;->startY:F

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
