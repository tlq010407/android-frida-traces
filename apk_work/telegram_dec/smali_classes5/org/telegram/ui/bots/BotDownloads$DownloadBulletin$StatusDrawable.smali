.class Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusDrawable"
.end annotation


# instance fields
.field private animatedDone:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animatedHasPercent:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private cancelled:Z

.field private final doc:Landroid/graphics/drawable/Drawable;

.field private done:Z

.field private doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private hasPercent:Z

.field private progress:F

.field private final rect:Landroid/graphics/RectF;

.field private final start:J

.field private final strokePaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->done:Z

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v3, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;)V

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x140

    move-object v2, v1

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedHasPercent:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v5, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x140

    move-object v4, v1

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v5, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedDone:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->view:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->start:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->search_files_filled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedDone:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->done:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x437f0000    # 255.0f

    const v13, 0x3f19999a    # 0.6f

    const v14, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v10, v1

    if-gez v2, :cond_1

    sub-float v2, v1, v10

    mul-float v3, v2, v14

    add-float/2addr v3, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v8

    int-to-float v5, v9

    invoke-virtual {v7, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v8, v6

    iget-object v15, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int v15, v9, v15

    iget-object v13, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v8

    iget-object v14, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    invoke-virtual {v3, v6, v15, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    mul-float v6, v2, v12

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    const v13, 0x3e4ccccd    # 0.2f

    mul-float v13, v13, v2

    const/4 v14, -0x1

    invoke-static {v14, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    mul-float v13, v2, v1

    invoke-static {v14, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->rect:Landroid/graphics/RectF;

    sub-float v15, v4, v3

    sub-float v12, v5, v3

    add-float/2addr v4, v3

    add-float/2addr v5, v3

    invoke-virtual {v6, v15, v12, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedHasPercent:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->hasPercent:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v12

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    const v4, 0x3e19999a    # 0.15f

    mul-float v2, v2, v4

    sub-float/2addr v1, v12

    mul-float v2, v2, v1

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->rect:Landroid/graphics/RectF;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->start:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x258

    rem-long/2addr v3, v5

    long-to-float v1, v3

    const/high16 v3, 0x44160000    # 600.0f

    div-float/2addr v1, v3

    const/high16 v3, -0x40800000    # -1.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v1, v1, v3

    neg-float v1, v1

    const/high16 v15, -0x3d4c0000    # -90.0f

    add-float v3, v1, v15

    iget-object v6, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->start:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float v1, v1, v2

    const v2, 0x45a8c000    # 5400.0f

    rem-float/2addr v1, v2

    const/high16 v3, 0x44be0000    # 1520.0f

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    sget-object v4, Lorg/telegram/ui/Components/CircularProgressDrawable;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    mul-int/lit16 v5, v3, 0x546

    int-to-float v6, v5

    sub-float v6, v1, v6

    const v16, 0x4426c000    # 667.0f

    div-float v6, v6, v16

    invoke-virtual {v4, v6}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    add-int/lit16 v5, v5, 0x29b

    int-to-float v5, v5

    sub-float v5, v1, v5

    div-float v5, v5, v16

    invoke-virtual {v4, v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v5, 0x437a0000    # 250.0f

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-static {v14, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->rect:Landroid/graphics/RectF;

    sub-float v4, v15, v2

    iget-object v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->progress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    const v2, 0x3ca3d70a    # 0.02f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, -0x3c4c0000    # -360.0f

    mul-float v1, v1, v2

    mul-float v5, v1, v12

    iget-object v6, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    cmpl-float v1, v10, v11

    if-lez v1, :cond_4

    const v1, 0x3ecccccd    # 0.4f

    mul-float v14, v10, v1

    const v1, 0x3f19999a    # 0.6f

    add-float/2addr v14, v1

    iget-boolean v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->cancelled:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v8

    int-to-float v2, v9

    invoke-virtual {v7, v14, v14, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v8, v2

    iget-object v3, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v9, v3

    iget-object v4, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v8, v4

    iget-object v4, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v9, v4

    invoke-virtual {v1, v2, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v10, v10, v2

    float-to-int v2, v10

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->cancelled:Z

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedDone:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->done:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->cancelled:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->animatedHasPercent:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->hasPercent:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDone(Z)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->done:Z

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->cancelled:Z

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    :goto_0
    if-eqz p1, :cond_2

    const-string v3, "error"

    goto :goto_1

    :cond_2
    const-string v3, "contact_check"

    :goto_1
    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->doneDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    if-nez p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->progress:F

    :cond_3
    return-void
.end method

.method public setProgress(Landroid/util/Pair;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->hasPercent:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin$StatusDrawable;->progress:F

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
