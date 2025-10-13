.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsView"
.end annotation


# instance fields
.field private bufferedPosition:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentProgressX:I

.field private duration:I

.field private durationLayout:Landroid/text/StaticLayout;

.field private durationWidth:I

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVisible:Z

.field private lastProgressX:I

.field private progress:I

.field private progressBufferedPaint:Landroid/graphics/Paint;

.field private progressInnerPaint:Landroid/graphics/Paint;

.field private progressLayout:Landroid/text/StaticLayout;

.field private progressPaint:Landroid/graphics/Paint;

.field private progressPressed:Z

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method public static synthetic $r8$lambda$o1fttfjOBCEzUbSKufsSryvZ3pE(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    const v1, -0xe65818

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    const v1, -0x6a6e69

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method private checkNeedHide()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4600(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4700(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4800(Lorg/telegram/ui/Components/WebPlayerView;)J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$4802(Lorg/telegram/ui/Components/WebPlayerView;J)J

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    long-to-float v3, v5

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4724(Lorg/telegram/ui/Components/WebPlayerView;F)F

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4700(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4702(Lorg/telegram/ui/Components/WebPlayerView;F)F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4700(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    const/16 v4, 0xa

    const/4 v5, 0x6

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    iget v6, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x6

    goto :goto_0

    :cond_3
    const/16 v6, 0xa

    :goto_0
    add-int/lit8 v6, v6, 0x1d

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x6

    :cond_5
    add-int/lit8 v4, v4, 0x1d

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    const/high16 v8, 0x40e00000    # 7.0f

    const/4 v4, 0x0

    const/high16 v9, 0x40400000    # 3.0f

    if-eqz v3, :cond_7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_1
    sub-int/2addr v2, v5

    move v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int/2addr v4, v5

    const/high16 v5, 0x42980000    # 76.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v1, v5

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_2

    :cond_8
    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_9

    int-to-float v2, v13

    int-to-float v3, v12

    int-to-float v4, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    iget-boolean v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    :goto_3
    move v14, v1

    goto :goto_4

    :cond_a
    sub-int v1, v10, v13

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v13

    goto :goto_3

    :goto_4
    iget v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    if-eqz v1, :cond_c

    iget v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v2, :cond_c

    int-to-float v3, v13

    int-to-float v4, v12

    sub-int/2addr v10, v13

    int-to-float v5, v10

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v5, v5, v1

    add-float/2addr v5, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    :goto_5
    move-object v10, v1

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    goto :goto_5

    :goto_6
    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    int-to-float v2, v13

    int-to-float v3, v12

    int-to-float v10, v14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v12, v1

    int-to-float v5, v12

    iget-object v6, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_e

    int-to-float v1, v11

    iget-boolean v2, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    const/high16 v8, 0x40a00000    # 5.0f

    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v4, :cond_1

    sub-int v5, v2, v0

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    mul-float v5, v5, v6

    float-to-int v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v4, v5

    if-lt v0, v5, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v4

    if-gt v0, v5, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v3, v5

    if-lt v1, v5, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v3, v2

    if-gt v1, v3, :cond_3

    iput-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    iput v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v6, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    sub-int/2addr v4, v1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    if-ge v3, v0, :cond_6

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    goto :goto_3

    :cond_6
    if-le v3, v2, :cond_7

    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    :cond_7
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v3, v0

    mul-float v1, v1, v3

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$1300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    iget-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v3, :cond_a

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v3, v0

    mul-float v1, v1, v3

    float-to-int v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_a
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v6
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method public setBufferedProgress(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDuration(I)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eq v0, p1, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    new-instance p1, Landroid/text/StaticLayout;

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    new-instance p1, Landroid/text/StaticLayout;

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public show(ZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    const-wide/16 v2, 0x96

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    aput p1, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    aput p1, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method
