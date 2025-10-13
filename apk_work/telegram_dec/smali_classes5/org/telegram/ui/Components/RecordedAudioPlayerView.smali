.class public Lorg/telegram/ui/Components/RecordedAudioPlayerView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public allowDraw:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundRect:Landroid/graphics/RectF;

.field private final badgeClickRect:Landroid/graphics/RectF;

.field private final badgeRect:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private final darkerBackgroundPaint:Landroid/graphics/Paint;

.field private destroyed:Z

.field public duration:F

.field private final handlePaint:Landroid/graphics/Paint;

.field private final handleRect:Landroid/graphics/RectF;

.field private holdProgress:F

.field private lastWaveformWidth:I

.field public left:F

.field private final leftHandleClickRect:Landroid/graphics/RectF;

.field private leftPressed:Z

.field private final playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playPressed:Z

.field private player:Lorg/telegram/ui/Components/VideoPlayer;

.field private progressPressed:Z

.field private progressPressedWasPlaying:Z

.field private final progressUpdate:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public right:F

.field private final rightHandleClickRect:Landroid/graphics/RectF;

.field private rightPressed:Z

.field private final showBadge:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final showDuration:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public wasPlaying:Z

.field private waveformData:[B

.field private final waveformPaint:Landroid/graphics/Paint;

.field private final waveformPath:Landroid/graphics/Path;


# direct methods
.method public static synthetic $r8$lambda$Kx8ur_PBZa0Jtb9D0o4Sx7I2_AI(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handlePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    new-instance p1, Lorg/telegram/ui/Components/RecordedAudioPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressUpdate:Ljava/lang/Runnable;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->clipPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeClickRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftHandleClickRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightHandleClickRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPath:Landroid/graphics/Path;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x154

    move-object v1, p1

    move-object v2, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->showDuration:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->showBadge:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->allowDraw:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setParent(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v5, 0xc8

    const/high16 v2, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Lorg/telegram/ui/Components/PlayPauseDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v2, v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressUpdate:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public checkWaveform()V
    .locals 15

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->lastWaveformWidth:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x7f

    const/16 v8, -0x80

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_2

    iget-object v10, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformData:[B

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    int-to-float v11, v9

    int-to-float v12, v2

    div-float/2addr v11, v12

    array-length v12, v10

    int-to-float v12, v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    aget-byte v10, v10, v11

    :goto_1
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-byte v8, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v2, :cond_4

    iget-object v10, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformData:[B

    if-nez v10, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    int-to-float v11, v9

    int-to-float v12, v2

    div-float/2addr v11, v12

    array-length v12, v10

    int-to-float v12, v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    aget-byte v10, v10, v11

    :goto_3
    invoke-static {v10, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(III)F

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v10

    invoke-static {v4, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    mul-int v11, v11, v9

    int-to-float v11, v11

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-float v13, v10

    div-float/2addr v13, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v11

    div-float/2addr v10, v3

    invoke-virtual {v12, v11, v13, v14, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPath:Landroid/graphics/Path;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v12, v13, v11, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->lastWaveformWidth:I

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->destroyed:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->allowDraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->drawIn(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeClickRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftHandleClickRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightHandleClickRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftHandleClickRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightHandleClickRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_8

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPressed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftPressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightPressed:Z

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressedWasPlaying:Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    :cond_4
    iput-boolean v5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressedWasPlaying:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-float v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v7, v0, v3

    :goto_3
    iput v7, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->holdProgress:F

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPressed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftPressed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightPressed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-eqz v0, :cond_14

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftPressed:Z

    const v3, 0x41b547ae    # 22.66f

    const/high16 v4, 0x41f00000    # 30.0f

    const v5, 0x413547ae    # 11.33f

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    iget v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->duration:F

    div-float v6, v7, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v8, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v8, v3

    div-float/2addr v4, v8

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(FFF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightPressed:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    iget v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->duration:F

    div-float v6, v7, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v8, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v8, v3

    div-float/2addr v4, v8

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(FFF)F

    move-result v3

    invoke-static {v3, v7, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    goto :goto_4

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(FFF)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    iget v5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->holdProgress:F

    iget-object v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto/16 :goto_4

    :cond_c
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->duration:F

    iget v4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    iget v5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    sub-float/2addr v4, v5

    mul-float v3, v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_9

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_14

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPressed:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->isPlaying()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    goto :goto_8

    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftPressed:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_12

    iget v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    :goto_6
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_7

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightPressed:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_12

    iget v3, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    iget-object v6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    const-wide/16 v7, 0x5dc

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_6

    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_7
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    :cond_13
    :goto_8
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPressed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftPressed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightPressed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    :cond_14
    :goto_9
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPressed:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftPressed:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightPressed:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_a
    return v1
.end method

.method public drawIn(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceBackground:I

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceDarkerBackground:I

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceProgressInner:I

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoicePlayPause:I

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceProgress:I

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handlePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    const v2, 0x413547ae    # 11.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    float-to-int v11, v1

    iget v1, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v2

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    float-to-int v12, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->checkWaveform()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->clipPath:Landroid/graphics/Path;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    const v14, 0x3faa3d71    # 1.33f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v11, v1

    int-to-float v4, v1

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v2, v1

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v8, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    int-to-float v15, v11

    iget v3, v8, Landroid/graphics/RectF;->top:F

    int-to-float v6, v12

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v16, v4

    move v4, v6

    move v13, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->holdProgress:F

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-float v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    iget v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    :goto_1
    iget v3, v8, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v3, v13, v15}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    cmpg-float v4, v3, v13

    if-gez v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v3, v4, v13, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v4, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    cmpl-float v1, v1, v4

    if-gez v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    goto :goto_2

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    cmpl-float v1, v3, v15

    if-lez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v15, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v1, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_5
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_6
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    goto :goto_5

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v11, v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const v6, 0x40aa8f5c    # 5.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v11, v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    invoke-virtual {v1, v4, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v5

    iget-object v10, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v12

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v12

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v10, v6

    invoke-virtual {v1, v4, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v5

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handleRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->leftHandleClickRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v11, v4

    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v13, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->rightHandleClickRect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v4, v13, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->showBadge:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressPressed:Z

    const/4 v9, 0x1

    xor-int/2addr v4, v9

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    cmpl-float v4, v1, v13

    if-lez v4, :cond_9

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v10, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v10

    add-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v10, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->showDuration:Lorg/telegram/ui/Components/AnimatedFloat;

    sub-int v14, v12, v11

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/4 v15, 0x0

    cmpg-float v14, v4, v14

    if-gtz v14, :cond_8

    const/4 v14, 0x1

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v10, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v14, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    add-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v12, v11, v3

    div-float/2addr v12, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float v9, v16, v4

    add-float/2addr v11, v3

    div-float/2addr v11, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {v14, v12, v9, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v8, v3

    mul-float v8, v8, v1

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v5

    iget-object v11, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v8, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->darkerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeClickRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeClickRect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v3, v4, v8}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    int-to-float v8, v3

    div-float/2addr v8, v5

    sub-float/2addr v4, v8

    iget-object v5, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v4, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {v4, v15, v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v5, v1, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/PlayPauseDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    cmpl-float v3, v10, v13

    if-lez v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const v5, 0x41ad47ae    # 21.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->badgeRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v3, -0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v3, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v10, v10, v4

    mul-float v10, v10, v1

    float-to-int v1, v10

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAudioLeft()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    return v0
.end method

.method public getAudioLeftMs()J
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getAudioRight()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    return v0
.end method

.method public getAudioRightMs()J
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewDuration()D
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    iget v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public init(Ljava/lang/String;D[BFF)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    double-to-float v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->duration:F

    iput p5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    iput p6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    const/4 p5, 0x0

    iput-boolean p5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    iget-object p6, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-static {p3, p5}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2, p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {p2, p5, p5}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez p2, :cond_1

    new-instance p2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {p2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance p3, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;-><init>(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "other"

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    iput p5, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->lastWaveformWidth:I

    iput-object p4, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->waveformData:[B

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsCut()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/high16 p1, 0x42000000    # 32.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    div-float/2addr v0, p4

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p3, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 p1, 0x42000000    # 32.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    div-float/2addr v3, v1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAllowDraw(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->allowDraw:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->allowDraw:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPlaying(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->destroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->left:F

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->player:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressUpdate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->progressUpdate:Ljava/lang/Runnable;

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
