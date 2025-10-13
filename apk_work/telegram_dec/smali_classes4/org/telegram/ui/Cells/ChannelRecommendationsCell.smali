.class public Lorg/telegram/ui/Cells/ChannelRecommendationsCell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;
    }
.end annotation


# instance fields
.field private final backgroundBounds:Landroid/graphics/RectF;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private blockWidth:I

.field private cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private final channels:Ljava/util/ArrayList;

.field private channelsScrollWidth:F

.field public chatId:J

.field private final closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final closeBounds:Landroid/graphics/RectF;

.field private final closePaint:Landroid/graphics/Paint;

.field private currentAccount:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private dialogId:J

.field private headerText:Lorg/telegram/ui/Components/Text;

.field private lastBackgroundPathExpandT:F

.field private loading:Z

.field private final loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final loadingPath:Landroid/graphics/Path;

.field private longPressRunnable:Ljava/lang/Runnable;

.field private longPressedBlock:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

.field private lx:F

.field private ly:F

.field private maybeScrolling:Z

.field private msg:Lorg/telegram/messenger/MessageObject;

.field private scrollX:F

.field private final scroller:Lorg/telegram/ui/Components/Scroller;

.field private scrolling:Z

.field private serviceText:Landroid/text/StaticLayout;

.field private serviceTextHeight:I

.field private serviceTextLeft:F

.field private final serviceTextPaint:Landroid/text/TextPaint;

.field private serviceTextRight:F

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$l1ob359XgkqkdjFpe3ALqxl2DWs(Lorg/telegram/ui/Cells/ChannelRecommendationsCell;Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lambda$checkTouchEvent$0(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lastBackgroundPathExpandT:F

    const/high16 v0, 0x42840000    # 66.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scroller:Lorg/telegram/ui/Components/Scroller;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loading:Z

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x15e

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private checkBackgroundPath(F)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lastBackgroundPathExpandT:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x418547ae    # 16.66f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v4, v3, p1

    add-float v5, v2, p1

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v1, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, p1

    add-float v5, v2, p1

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    const/high16 v5, -0x3ccc0000    # -180.0f

    invoke-virtual {v2, v1, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v5, v2, p1

    invoke-virtual {v1, v5, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    const/high16 v2, -0x3c790000    # -270.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v2, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    invoke-virtual {v1, v4, v0, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private synthetic lambda$checkTouchEvent$0(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressedBlock:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressedBlock:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iget-boolean v0, p1, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->chat:Lorg/telegram/tgnet/TLObject;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->didClickChannel(Lorg/telegram/tgnet/TLObject;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressedBlock:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrolling:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->maybeScrolling:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    return-void
.end method

.method private scroll(F)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    add-float/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channelsScrollWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    return-void
.end method

.method private unselectBlocks()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iget-object v2, v2, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->msg:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v8, v8, v4

    if-ltz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->height()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loading:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lx:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->ly:F

    invoke-virtual {v2, v8, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->maybeScrolling:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrolling:Z

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_6

    iget-object v1, v6, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_6
    if-eqz v4, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    :cond_8
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressedBlock:Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    if-eqz v6, :cond_9

    new-instance v1, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v6}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ChannelRecommendationsCell;Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->maybeScrolling:Z

    return v1

    :cond_a
    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->maybeScrolling:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lx:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v2, v2, v4

    if-gez v2, :cond_d

    :cond_c
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrolling:Z

    if-eqz v2, :cond_10

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    :cond_e
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrolling:Z

    iget v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lx:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scroll(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->lx:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->unselectBlocks()V

    return v5

    :cond_f
    if-eq v2, v5, :cond_11

    const/4 v4, 0x3

    if-ne v2, v4, :cond_10

    goto :goto_3

    :cond_10
    return v3

    :cond_11
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->longPressRunnable:Ljava/lang/Runnable;

    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrolling:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrolling:Z

    if-ne v2, v5, :cond_17

    if-nez v1, :cond_15

    if-eqz v6, :cond_15

    iget-object v2, v6, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, v6, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_4

    :cond_14
    iget-object v2, v6, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->chat:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->didClickChannel(Lorg/telegram/tgnet/TLObject;Z)V

    goto :goto_4

    :cond_15
    if-eqz v1, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_16

    const/16 v4, 0x1f4

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    neg-float v2, v2

    float-to-int v11, v2

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    float-to-int v9, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const v13, -0x7fffffff

    const v14, 0x7fffffff

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    goto :goto_4

    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->didClickClose()V

    :cond_17
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->maybeScrolling:Z

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_18
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->unselectBlocks()V

    return v1

    :cond_19
    :goto_5
    return v3
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    iget v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channelsScrollWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    :cond_0
    return-void
.end method

.method public didClickChannel(Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {v0, v1, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V

    :cond_0
    return-void
.end method

.method public didClickClose()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->msg:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->computeScroll()V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextLeft:F

    add-float/2addr v4, v1

    const v5, 0x410a8f5c    # 8.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v11, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextRight:F

    add-float/2addr v11, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v11, v5

    const v5, 0x412a8f5c    # 10.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextHeight:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v3, v4, v6, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v3, v6, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawServiceBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    const v3, 0x40ea8f5c    # 7.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextHeight:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v9

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRecommendationsExpanded:Z

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    sub-float v3, v8, v3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const v11, 0x3e99999a    # 0.3f

    sub-float/2addr v3, v11

    const v4, 0x3f333333    # 0.7f

    div-float/2addr v3, v4

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v12

    cmpl-float v3, v12, v9

    if-lez v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0x43dc8000    # 441.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42840000    # 66.0f

    const/high16 v13, 0x41100000    # 9.0f

    if-le v3, v4, :cond_5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_2

    :cond_5
    int-to-float v4, v3

    const/high16 v6, 0x40900000    # 4.5f

    div-float/2addr v4, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_2
    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int v4, v4, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channelsScrollWidth:F

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40d00000    # 6.5f

    mul-float v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v14, v3

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v14

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v14

    int-to-float v6, v6

    div-float/2addr v6, v2

    const/high16 v2, 0x430a0000    # 138.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    iget v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channelsScrollWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->checkBackgroundPath(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f19999a    # 0.6f

    mul-float v1, v1, v12

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v2, v12, v15

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x41d80000    # 27.0f

    mul-float v4, v4, v12

    float-to-int v4, v4

    const/high16 v5, -0x1000000

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->headerText:Lorg/telegram/ui/Components/Text;

    const/high16 v16, 0x41a00000    # 20.0f

    if-eqz v1, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v5

    move-object/from16 v2, p1

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loading:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    sub-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    cmpg-float v13, v1, v8

    if-gez v13, :cond_7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_3
    add-int/lit8 v14, v5, 0x1

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v13, v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v14, v13

    mul-float v14, v14, v3

    add-float/2addr v14, v2

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->height()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v15, v11

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    iget v11, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    sub-float v14, v8, v1

    mul-float v14, v14, v12

    invoke-virtual {v10, v7, v11, v14}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->draw(Landroid/graphics/Canvas;IF)V

    iget v11, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    invoke-virtual {v10, v7, v11, v14}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->drawText(Landroid/graphics/Canvas;IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v15, 0x437f0000    # 255.0f

    goto :goto_3

    :cond_7
    cmpl-float v8, v1, v9

    if-lez v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_4
    if-ge v4, v5, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingPath:Landroid/graphics/Path;

    iget v10, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    int-to-float v11, v4

    mul-float v11, v11, v3

    add-float/2addr v11, v2

    invoke-static {v8, v10, v11}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->fillPath(Landroid/graphics/Path;IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v2, :cond_9

    new-instance v2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3ca3d70a    # 0.02f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v2, v3

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v9, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v1, v1, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    const v2, 0x3faa3d71    # 1.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v8, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v9, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v8, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v9, v1

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v8, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v3, v9, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v8, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v9, v1

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closeBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v8, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v9, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v8, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    :goto_5
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->msg:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->channelJoinedExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->attach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->msg:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->dialogId:J

    iget p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->dialogId:J

    neg-long v2, v2

    iput-wide v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->chatId:J

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/text/StaticLayout;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoined:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->msg:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMaxMessageTextWidth()I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextLeft:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextRight:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextLeft:F

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextLeft:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextRight:F

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextRight:F

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceText:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->closePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const v5, 0x416a8f5c    # 14.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->serviceTextHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->totalHeight:I

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->detach()V

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v4, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v4, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLObject;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_4

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_4
    add-int/2addr v6, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v6, 0x1

    :goto_6
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->loading:Z

    if-nez v6, :cond_d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v7

    if-nez v7, :cond_8

    iget v7, v4, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->more:I

    if-lez v7, :cond_8

    sub-int/2addr v6, v1

    iget v7, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->recommendedChannelsLimitDefault:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_8
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iget v10, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    iget-object v11, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLObject;

    invoke-direct {v9, v10, v11, v12}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;-><init>(ILorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v1

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    const/4 v7, 0x0

    if-ltz v6, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_a

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLObject;

    goto :goto_8

    :cond_a
    move-object v8, v7

    :goto_8
    if-ltz v6, :cond_b

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    goto :goto_9

    :cond_b
    move-object v9, v7

    :goto_9
    if-ltz v6, :cond_c

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLObject;

    :cond_c
    const/4 v10, 0x3

    new-array v10, v10, [Lorg/telegram/tgnet/TLObject;

    aput-object v8, v10, v3

    aput-object v9, v10, v1

    aput-object v7, v10, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;

    iget v7, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->currentAccount:I

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v4, v4, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->more:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v6

    invoke-direct {v3, v7, v8, v10, v5}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;-><init>(ILorg/telegram/ui/Cells/ChatMessageCell;[Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->headerText:Lorg/telegram/ui/Components/Text;

    if-nez v0, :cond_f

    new-instance v0, Lorg/telegram/ui/Components/Text;

    iget-wide v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_e

    sget v3, Lorg/telegram/messenger/R$string;->SimilarBots:I

    goto :goto_a

    :cond_e
    sget v3, Lorg/telegram/messenger/R$string;->SimilarChannels:I

    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->hackClipBounds()Lorg/telegram/ui/Components/Text;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->headerText:Lorg/telegram/ui/Components/Text;

    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->totalHeight:I

    const/high16 v3, 0x43100000    # 144.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->totalHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_10
    iget v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->blockWidth:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int v0, v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->channelsScrollWidth:F

    iget v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    invoke-static {v1, v0, p1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->scrollX:F

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->msg:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    return-void
.end method
