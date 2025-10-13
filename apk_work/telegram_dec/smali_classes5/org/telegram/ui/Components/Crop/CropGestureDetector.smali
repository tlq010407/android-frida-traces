.class public Lorg/telegram/ui/Components/Crop/CropGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

.field private final mMinimumVelocity:F

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private started:Z

.field private touchTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;-><init>(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-object p0
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v5, 0xff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    if-ne v5, v6, :cond_5

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->touchTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x320

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onTapUp()V

    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->touchTime:J

    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    if-eq v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    if-eq v0, v3, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_d

    if-eq v0, v2, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    goto/16 :goto_3

    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iget v6, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    neg-float p1, p1

    neg-float v0, v0

    invoke-interface {v2, v5, v6, p1, v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onFling(FFFF)V

    :cond_a
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_c
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    goto :goto_3

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_e
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    return v3

    :cond_f
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    sub-float v2, v0, v2

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    sub-float v5, v1, v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-nez v6, :cond_11

    mul-float v6, v2, v2

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    const/4 v4, 0x1

    :cond_10
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    :cond_11
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    invoke-interface {v4, v2, v5}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onDrag(FF)V

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_12
    :goto_3
    return v3
.end method

.method public setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-void
.end method
