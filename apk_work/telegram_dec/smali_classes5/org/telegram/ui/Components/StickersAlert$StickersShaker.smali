.class Lorg/telegram/ui/Components/StickersAlert$StickersShaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickersShaker"
.end annotation


# instance fields
.field private final imageRotations:Ljava/util/List;

.field private final imageTranslationsX:Ljava/util/List;

.field private final imageTranslationsY:Ljava/util/List;

.field private final rotateAnimators:Ljava/util/List;

.field private final translateXAnimators:Ljava/util/List;

.field private final translateYAnimators:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$GUdj2fEjpCtFbJFe4Lw14gzK6HM(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$startShake$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8h4XrAtSntu1aBuKIV0zdUkEsQ(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$startShake$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bikvG7gWWCDfZfTk9GYw-1EkGjU(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$stopShake$3(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dEFiHLyLkd0x4E003axS0P3d38Y(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$stopShake$5(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$idTRIsTTDzOA_hVxQehdbPaunSQ(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$stopShake$4(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKrvSJk5DDM7O9gOCpa8p-n1cdk(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$startShake$2(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;-><init>()V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$startShake$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$startShake$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$startShake$2(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$stopShake$3(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$stopShake$4(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$stopShake$5(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRotationValueForPos(I)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    div-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getTranslateXValueForPos(I)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    div-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getTranslateYValueForPos(I)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    div-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public startShake()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->stopShake(Z)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->init()V

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x6

    if-ge v7, v8, :cond_0

    sget-object v8, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const/16 v9, 0x12c

    int-to-float v10, v9

    mul-float v8, v8, v10

    float-to-long v10, v8

    const/4 v8, 0x0

    new-array v12, v4, [F

    fill-array-data v12, :array_0

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v12, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    int-to-long v14, v9

    invoke-virtual {v12, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    neg-float v13, v9

    new-array v1, v4, [F

    aput v8, v1, v6

    aput v9, v1, v5

    aput v8, v1, v3

    aput v13, v1, v2

    const/4 v13, 0x4

    aput v8, v1, v13

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v13, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v13, -0x1

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/16 v13, 0x12c

    int-to-double v2, v13

    const-wide v17, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v17

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    sub-float v2, v8, v9

    const/4 v3, 0x4

    new-array v13, v3, [F

    aput v8, v13, v6

    aput v9, v13, v5

    const/4 v9, 0x2

    aput v2, v13, v9

    const/4 v2, 0x3

    aput v8, v13, v2

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v13, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v8, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v13, -0x1

    invoke-virtual {v8, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    invoke-virtual {v8, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    iget-object v10, v0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v5

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x0
    .end array-data
.end method

.method public stopShake(Z)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide/16 v5, 0x64

    const/4 v7, 0x0

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-array v8, v0, [F

    aput v4, v8, v2

    aput v7, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-array v8, v0, [F

    aput v4, v8, v2

    aput v7, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v3}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    add-int/2addr v3, v1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-array v8, v0, [F

    aput v4, v8, v2

    aput v7, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v3}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    add-int/2addr v3, v1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
