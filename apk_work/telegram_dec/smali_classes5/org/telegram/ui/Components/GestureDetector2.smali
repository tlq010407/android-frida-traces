.class public Lorg/telegram/ui/Components/GestureDetector2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;,
        Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;,
        Lorg/telegram/ui/Components/GestureDetector2$GestureHandler;
    }
.end annotation


# static fields
.field public static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/GestureDetector2;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/GestureDetector2;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/GestureDetector2;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/GestureDetector2$GestureHandler;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/GestureDetector2$GestureHandler;-><init>(Lorg/telegram/ui/Components/GestureDetector2;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/telegram/ui/Components/GestureDetector2$GestureHandler;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/GestureDetector2$GestureHandler;-><init>(Lorg/telegram/ui/Components/GestureDetector2;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    instance-of p3, p2, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    if-eqz p3, :cond_1

    check-cast p2, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/GestureDetector2;->setOnDoubleTapListener(Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;)V

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GestureDetector2;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/GestureDetector2;)Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/GestureDetector2;)Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/GestureDetector2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/GestureDetector2;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/GestureDetector2;)Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/GestureDetector2;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mStillDown:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/GestureDetector2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mIsDoubleTapping:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mStillDown:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInTapRegion:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mInContextClick:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private cancelTaps()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mIsDoubleTapping:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInTapRegion:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mInContextClick:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mIgnoreNextUpEvent:Z

    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    iget-object v1, p0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mIsLongpressEnabled:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mMinimumFlingVelocity:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mMaximumFlingVelocity:I

    const/16 v0, 0x64

    move v0, p1

    const/16 v2, 0x64

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/GestureDetector2;->mMinimumFlingVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GestureDetector2;->mMaximumFlingVelocity:I

    move p1, v1

    :goto_0
    mul-int v0, v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mTouchSlopSquare:I

    mul-int p1, p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapTouchSlopSquare:I

    mul-int v2, v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapSlopSquare:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnGestureListener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget p2, Lorg/telegram/ui/Components/GestureDetector2;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2

    const-wide/16 v4, 0x28

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    iget p3, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapSlopSquare:I

    mul-int p2, p2, p2

    mul-int p1, p1, p1

    add-int/2addr p2, p1

    if-ge p2, p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v10, v8, :cond_5

    if-ne v7, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v11, v13

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    add-int/lit8 v6, v8, -0x1

    goto :goto_4

    :cond_6
    move v6, v8

    :goto_4
    int-to-float v6, v6

    div-float/2addr v12, v6

    div-float/2addr v11, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v2, :cond_23

    const/16 v10, 0x3e8

    if-eq v2, v4, :cond_1a

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_b

    const/4 v4, 0x5

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_7

    goto/16 :goto_12

    :cond_7
    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusX:F

    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusX:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusY:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusY:F

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v2, v10, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_2a

    if-ne v6, v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget-object v10, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    mul-float v10, v10, v4

    iget-object v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    mul-float v7, v7, v3

    add-float/2addr v10, v7

    cmpg-float v7, v10, v9

    if-gez v7, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_12

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusX:F

    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusX:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusY:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusY:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GestureDetector2;->cancelTaps()V

    goto/16 :goto_12

    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GestureDetector2;->cancel()V

    goto/16 :goto_12

    :cond_c
    iget-boolean v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    if-nez v2, :cond_2a

    iget-boolean v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mInContextClick:Z

    if-eqz v2, :cond_d

    goto/16 :goto_12

    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_e

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/GestureDetector2$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/MotionEvent;)I

    move-result v8

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusX:F

    sub-float/2addr v10, v12

    iget v13, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusY:F

    sub-float/2addr v13, v11

    iget-boolean v14, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIsDoubleTapping:Z

    if-eqz v14, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    if-eqz v6, :cond_10

    invoke-interface {v6, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v17, v8

    move/from16 v18, v9

    :cond_f
    :goto_8
    const/16 v1, 0x1d

    goto/16 :goto_d

    :cond_10
    move/from16 v17, v8

    move/from16 v18, v9

    :cond_11
    const/16 v1, 0x1d

    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_12
    iget-boolean v14, v0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInTapRegion:Z

    if-eqz v14, :cond_17

    iget v14, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusX:F

    sub-float v14, v12, v14

    float-to-int v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusY:F

    sub-float v15, v11, v15

    float-to-int v15, v15

    mul-int v14, v14, v14

    mul-int v15, v15, v15

    add-int/2addr v14, v15

    iget v15, v0, Lorg/telegram/ui/Components/GestureDetector2;->mTouchSlopSquare:I

    if-lt v2, v3, :cond_13

    if-ne v8, v4, :cond_13

    const/16 v16, 0x1

    goto :goto_9

    :cond_13
    const/16 v16, 0x0

    :goto_9
    if-eqz v9, :cond_15

    if-eqz v16, :cond_15

    if-le v14, v15, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    move/from16 v17, v8

    move/from16 v18, v9

    int-to-long v8, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    long-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    float-to-long v8, v8

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_14
    move/from16 v17, v8

    move/from16 v18, v9

    :goto_a
    int-to-float v3, v15

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    float-to-int v15, v3

    goto :goto_b

    :cond_15
    move/from16 v17, v8

    move/from16 v18, v9

    :goto_b
    if-le v14, v15, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, v1, v10, v13}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusX:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusY:F

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInTapRegion:Z

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    move v4, v1

    goto :goto_c

    :cond_16
    const/4 v4, 0x0

    :goto_c
    iget v1, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapTouchSlopSquare:I

    if-le v14, v1, :cond_f

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_8

    :cond_17
    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_18

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_11

    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, v1, v10, v13}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusX:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusY:F

    goto/16 :goto_8

    :goto_d
    if-lt v2, v1, :cond_19

    move/from16 v8, v17

    if-ne v8, v7, :cond_19

    if-eqz v18, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    move v5, v4

    goto/16 :goto_12

    :cond_1a
    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mStillDown:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onUp(Landroid/view/MotionEvent;)V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIsDoubleTapping:Z

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    if-eqz v3, :cond_1b

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_f

    :cond_1b
    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :cond_1c
    iget-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    if-eqz v3, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    goto :goto_e

    :cond_1d
    iget-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_1f

    iget-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    if-eqz v4, :cond_1e

    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    if-eqz v4, :cond_1e

    invoke-interface {v4, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    :cond_1e
    move v1, v3

    goto :goto_f

    :cond_1f
    iget-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/GestureDetector2;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v10, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, v0, Lorg/telegram/ui/Components/GestureDetector2;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-gtz v4, :cond_20

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, v0, Lorg/telegram/ui/Components/GestureDetector2;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1b

    :cond_20
    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    iget-object v8, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v8, v1, v3, v6}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_21
    iput-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mPreviousUpEvent:Landroid/view/MotionEvent;

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_22
    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIsDoubleTapping:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIgnoreNextUpEvent:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    move v5, v1

    goto/16 :goto_12

    :cond_23
    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    if-eqz v2, :cond_27

    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;->canDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_25

    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_25

    if-eqz v2, :cond_25

    invoke-direct {v0, v3, v4, v1}, Lorg/telegram/ui/Components/GestureDetector2;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIsDoubleTapping:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_11

    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    sget v3, Lorg/telegram/ui/Components/GestureDetector2;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10

    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDeferConfirmSingleTap:Z

    :cond_27
    :goto_10
    const/4 v2, 0x0

    :goto_11
    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusX:F

    iput v12, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusX:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mLastFocusY:F

    iput v11, v0, Lorg/telegram/ui/Components/GestureDetector2;->mDownFocusY:F

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_28
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInTapRegion:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mAlwaysInBiggerTapRegion:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mStillDown:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GestureDetector2;->mInLongPress:Z

    iget-boolean v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mIsLongpressEnabled:Z

    if-eqz v3, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lorg/telegram/ui/Components/GestureDetector2;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v6, Lorg/telegram/ui/Components/GestureDetector2;->TAP_TIMEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/GestureDetector2;->mListener:Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int v5, v2, v1

    :cond_2a
    :goto_12
    return v5
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GestureDetector2;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GestureDetector2;->mDoubleTapListener:Lorg/telegram/ui/Components/GestureDetector2$OnDoubleTapListener;

    return-void
.end method
