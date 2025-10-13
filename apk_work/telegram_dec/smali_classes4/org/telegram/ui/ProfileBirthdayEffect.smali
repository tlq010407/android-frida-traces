.class public Lorg/telegram/ui/ProfileBirthdayEffect;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;,
        Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;
    }
.end annotation


# static fields
.field public static interactions:[Ljava/lang/String; = null

.field public static interactionsPack:Ljava/lang/String; = "EmojiAnimations"

.field public static numbersEmojipack:Ljava/lang/String; = "FestiveFontEmoji"


# instance fields
.field private attached:Z

.field private autoplayed:Z

.field private final currentAccount:I

.field private final dialogId:J

.field private fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

.field private fetcherToSet:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

.field private isPlaying:Z

.field private lastTime:J

.field private final profileActivity:Lorg/telegram/ui/ProfileActivity;

.field public sourcePoint:Landroid/graphics/PointF;

.field private t:F


# direct methods
.method public static synthetic $r8$lambda$_z8-YMlwFsXtVF2ksy3l8xXlk-A(Lorg/telegram/ui/ProfileBirthdayEffect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileBirthdayEffect;->lambda$onDraw$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\ud83c\udf86"

    const-string v1, "\ud83c\udf88"

    const-string v2, "\ud83c\udf89"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ProfileBirthdayEffect;->interactions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->sourcePoint:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->isPlaying:Z

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->dialogId:J

    iput-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->profileActivity:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    return-void
.end method

.method private synthetic lambda$onDraw$0()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileBirthdayEffect;->start()Z

    return-void
.end method

.method private updateSourcePoint()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->profileActivity:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->profileActivity:Lorg/telegram/ui/ProfileActivity;

    iget v1, v1, Lorg/telegram/ui/ProfileActivity;->birthdayRow:I

    if-gez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v1, v4, :cond_1

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->sourcePoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->addView(Lorg/telegram/ui/ProfileBirthdayEffect;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v2, v2, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v2, v2, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->removeView(Lorg/telegram/ui/ProfileBirthdayEffect;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-static {v2}, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->access$000(Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v5, v5, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v5, v5, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    iget-boolean v2, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->autoplayed:Z

    if-nez v2, :cond_2

    iput-boolean v4, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->autoplayed:Z

    new-instance v2, Lorg/telegram/ui/ProfileBirthdayEffect$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileBirthdayEffect$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileBirthdayEffect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean v2, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->isPlaying:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->lastTime:J

    sub-long v9, v5, v7

    const-wide/16 v11, 0x14

    const-wide/16 v13, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v7

    long-to-float v2, v7

    const v7, 0x45834000    # 4200.0f

    div-float/2addr v2, v7

    iget v7, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    add-float/2addr v7, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {v7, v2, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    iput-wide v5, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->lastTime:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileBirthdayEffect;->updateSourcePoint()V

    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v6, v6, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->interactionAsset:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    iget-object v10, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->sourcePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    sub-float/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v7, v10, v11, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v1, v6, v2, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v5, v5, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->interactionAsset:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v5, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v5, v5, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->interactionAsset:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    iget v6, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    const v7, 0x3f666666    # 0.9f

    sub-float/2addr v6, v7

    const v7, 0x3dcccccd    # 0.1f

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v5, 0x42dc0000    # 110.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v6, v6, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->digitAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_1
    if-ltz v6, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v7, v7, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->digitAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    iget v10, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    int-to-float v11, v6

    iget-object v12, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v12, v12, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->digitAssets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3fe66666    # 1.8f

    invoke-static {v10, v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    const v14, 0x3f6147ae    # 0.88f

    mul-float v14, v14, v13

    iget-object v15, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v15, v15, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->digitAssets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v4

    int-to-float v15, v15

    mul-float v15, v15, v14

    sub-float/2addr v12, v15

    div-float/2addr v12, v9

    iget-object v15, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->sourcePoint:Landroid/graphics/PointF;

    iget v4, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v4

    iget v15, v15, Landroid/graphics/PointF;->y:F

    add-float v16, v15, v13

    mul-float v14, v14, v11

    add-float/2addr v4, v14

    mul-float v12, v12, v10

    add-float/2addr v4, v12

    iget v11, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    float-to-double v11, v11

    move/from16 v17, v4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    div-float/2addr v10, v4

    invoke-static {v10, v2, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    div-float v4, v13, v9

    mul-float v4, v4, v3

    sub-float v10, v17, v4

    sub-float/2addr v15, v4

    mul-float v13, v13, v3

    invoke-virtual {v7, v10, v15, v13, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    iget v1, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->isPlaying:Z

    iget-object v1, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcherToSet:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileBirthdayEffect;->updateFetcher(Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcherToSet:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_2
    return-void
.end method

.method public start()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-static {v0}, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->access$000(Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v0, v0, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->interactionAsset:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v0, v0, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->interactionAsset:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v0, v0, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->interactionAsset:Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->isPlaying:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->t:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public updateFetcher(Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    if-eq v0, p1, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->isPlaying:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcherToSet:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v2, v2, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-object v2, v2, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->removeView(Lorg/telegram/ui/ProfileBirthdayEffect;)V

    iput-object p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->fetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    if-nez v0, :cond_5

    :goto_1
    iget-object v0, p1, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p1, Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;->allAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ProfileBirthdayEffect$ImageReceiverAsset;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/ProfileBirthdayEffect;->attached:Z

    :cond_5
    :goto_2
    return-void
.end method
