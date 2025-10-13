.class Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecretDeleteTimer"
.end annotation


# instance fields
.field private afterDeleteProgressPaint:Landroid/graphics/Paint;

.field private circlePaint:Landroid/graphics/Paint;

.field private deleteProgressRect:Landroid/graphics/RectF;

.field private destroyTime:J

.field private destroyTtl:J

.field private drawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private once:Z

.field private onceLayout:Landroid/text/StaticLayout;

.field private onceLayoutHeight:F

.field private onceLayoutWidth:F

.field private oncePaint:Landroid/text/TextPaint;

.field private particlePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;

.field private timerParticles:Lorg/telegram/ui/Components/TimerParticles;

.field private useVideoProgress:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    new-instance p1, Lorg/telegram/ui/Components/TimerParticles;

    invoke-direct {p1}, Lorg/telegram/ui/Components/TimerParticles;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->oncePaint:Landroid/text/TextPaint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    const v0, -0x19191a

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->circlePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x7f000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget p2, Lorg/telegram/messenger/R$raw;->fire_on:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p1, p2, v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->setOnce()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->setDestroyTime(JJZ)V

    return-void
.end method

.method private setDestroyTime(JJZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->once:Z

    iput-wide p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    iput-wide p3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTtl:J

    iput-boolean p5, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->useVideoProgress:Z

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setOnce()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->once:Z

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->oncePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->oncePaint:Landroid/text/TextPaint;

    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->oncePaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->oncePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "1"

    const/16 v5, 0x3e7

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayoutWidth:F

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayoutHeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->useVideoProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    long-to-float v0, v4

    long-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$600(Lorg/telegram/ui/SecretMediaViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getTimeDifference()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v2, v6

    iget-wide v6, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTime:J

    sub-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->destroyTtl:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    div-float/2addr v0, v2

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->once:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayoutWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayoutHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->onceLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const v0, 0x419a4925

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    add-float v5, v0, v2

    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    const v6, 0x414db6dc

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const v2, 0x4200924a

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    :goto_2
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/TimerParticles;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sub-float v5, v2, v1

    float-to-int v5, v5

    sub-float v6, v3, v1

    float-to-int v6, v6

    add-float/2addr v2, v1

    float-to-int v2, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v4, v5, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v1, -0x3c4c0000    # -360.0f

    mul-float v0, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->afterDeleteProgressPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    iget-object v4, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->particlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    move v6, v0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x420c0000    # 35.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x41280000    # 10.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->deleteProgressRect:Landroid/graphics/RectF;

    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v4, p1, v0

    add-float/2addr v0, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
