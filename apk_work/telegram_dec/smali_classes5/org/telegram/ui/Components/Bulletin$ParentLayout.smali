.class public abstract Lorg/telegram/ui/Components/Bulletin$ParentLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ParentLayout"
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private hideAnimationRunning:Z

.field private final layout:Lorg/telegram/ui/Components/Bulletin$Layout;

.field private needLeftAlphaAnimation:Z

.field private needRightAlphaAnimation:Z

.field private pressed:Z

.field private pressedTime:J

.field private final rect:Landroid/graphics/Rect;

.field private scrolling:Z

.field private translationX:F

.field private tx:F

.field private ty:F

.field private wasCanHide:Z


# direct methods
.method public static synthetic $r8$lambda$ZjusujDmUKPlmZNhl_moGveXfyw(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->lambda$onTouchEvent$0(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->rect:Landroid/graphics/Rect;

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$1;-><init>(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->hideAnimationRunning:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->hideAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->needLeftAlphaAnimation:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->needLeftAlphaAnimation:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->needRightAlphaAnimation:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->needRightAlphaAnimation:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->tx:F

    return p0
.end method

.method static synthetic access$1616(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->tx:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->tx:F

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->ty:F

    return p0
.end method

.method static synthetic access$1716(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->ty:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->ty:F

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/Bulletin$ParentLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->wasCanHide:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Bulletin$ParentLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    return p0
.end method

.method static synthetic access$2024(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    return v0
.end method

.method private inLayoutHitRect(FF)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->rect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onTouchEvent$0(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->onHide()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract onHide()V
.end method

.method protected abstract onPressedStateChanged(Z)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->pressed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->inLayoutHitRect(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->pressed:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->hideAnimationRunning:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->ty:F

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->tx:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->scrolling:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->pressedTime:J

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object p1, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->access$2100(Lorg/telegram/ui/Components/Bulletin;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->wasCanHide:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->pressed:Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->onPressedStateChanged(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_4

    :cond_4
    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_d

    :cond_5
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->pressed:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->hideAnimationRunning:Z

    if-nez v3, :cond_b

    iget v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const-wide/16 v5, 0xc8

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    iget v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->translationX:F

    cmpg-float v4, v3, v0

    if-gez v4, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->needLeftAlphaAnimation:Z

    if-nez v4, :cond_7

    :cond_6
    cmpl-float v3, v3, v0

    if-lez v3, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->needRightAlphaAnimation:Z

    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/Bulletin$ParentLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$ParentLayout;F)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_b
    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->scrolling:Z

    if-nez v3, :cond_c

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_c
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->pressed:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->onPressedStateChanged(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ParentLayout;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_d
    :goto_4
    return v2
.end method
