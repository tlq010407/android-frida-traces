.class public Lorg/telegram/ui/Components/CheckBoxBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;
    }
.end annotation


# static fields
.field private static eraser:Landroid/graphics/Paint;

.field private static forbidPaint:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private alpha:F

.field public animationDuration:J

.field private attachedToWindow:Z

.field private background2ColorKey:I

.field private backgroundAlpha:F

.field private backgroundColor:I

.field private backgroundColorKey:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundType:I

.field public bounds:Landroid/graphics/Rect;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkColorKey:I

.field private checkPaint:Landroid/graphics/Paint;

.field public checkScale:F

.field private checkedText:Ljava/lang/String;

.field private circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

.field private cutCheck:Z

.field private drawUnchecked:Z

.field private enabled:Z

.field private forbidden:Z

.field private isChecked:Z

.field private messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private parentView:Landroid/view/View;

.field private path:Landroid/graphics/Path;

.field private progress:F

.field private progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private size:F

.field private strokeBackgroundKey:I

.field private strokeBackgroundWidth:I

.field private textPaint:Landroid/text/TextPaint;

.field private useDefaultCheck:Z


# direct methods
.method public static synthetic $r8$lambda$jYImu91pPxs1Bzccu4bB-G9Tg5s(Ljava/lang/Void;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->lambda$new$0(Ljava/lang/Void;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkScale:F

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundKey:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundWidth:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/CheckBoxBase$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->animationDuration:J

    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    int-to-float p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    sget-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    const p3, 0x3ff33333    # 1.9f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const p2, 0x3f99999a    # 1.2f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CheckBoxBase;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/CheckBoxBase;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/CheckBoxBase;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/CheckBoxBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    return-object p1
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CheckBoxBase$1;-><init>(Lorg/telegram/ui/Components/CheckBoxBase;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->animationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Void;)Landroid/graphics/Paint;
    .locals 0

    sget-object p0, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public cancelCheckAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v12, 0x0

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v1, v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/high16 v14, 0x41200000    # 10.0f

    const/16 v15, 0xb

    const/16 v7, 0xd

    const/16 v6, 0xc

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    if-eq v2, v15, :cond_1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    move v5, v1

    move/from16 v16, v2

    goto :goto_2

    :cond_1
    :goto_0
    move v5, v1

    move/from16 v16, v5

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :goto_2
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    if-eqz v1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    move v3, v1

    :goto_3
    const/high16 v17, 0x3f000000    # 0.5f

    cmpl-float v1, v3, v17

    if-ltz v1, :cond_4

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    div-float v1, v3, v17

    move/from16 v18, v1

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-boolean v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-eqz v4, :cond_5

    int-to-float v4, v2

    sub-float v19, v4, v5

    int-to-float v6, v1

    sub-float v21, v6, v5

    add-float/2addr v4, v5

    add-float/2addr v6, v5

    const/16 v22, 0xff

    const/16 v23, 0x1f

    move v14, v1

    move-object/from16 v1, p1

    move v9, v2

    move/from16 v2, v19

    move v10, v3

    move/from16 v3, v21

    const/high16 v21, 0x3f800000    # 1.0f

    move v13, v5

    move v5, v6

    const/16 v11, 0xc

    move/from16 v6, v22

    const/16 v15, 0xd

    move/from16 v7, v23

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_5

    :cond_5
    move v14, v1

    move v9, v2

    move v10, v3

    move v13, v5

    const/16 v11, 0xc

    const/16 v15, 0xd

    const/high16 v21, 0x3f800000    # 1.0f

    :goto_5
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    const/high16 v22, 0x437f0000    # 255.0f

    const v2, 0xffffff

    const/16 v6, 0xe

    const/16 v5, 0xa

    const/4 v4, 0x7

    const/4 v7, 0x6

    if-ltz v1, :cond_c

    iget-boolean v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v3, :cond_b

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-eq v3, v11, :cond_a

    if-ne v3, v15, :cond_6

    goto :goto_b

    :cond_6
    if-eq v3, v7, :cond_9

    if-ne v3, v4, :cond_7

    goto :goto_a

    :cond_7
    if-eq v3, v5, :cond_d

    if-ne v3, v6, :cond_8

    goto :goto_c

    :cond_8
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v3

    and-int/2addr v2, v3

    const/high16 v3, 0x28000000

    or-int/2addr v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    :goto_8
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    :goto_9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_e

    :cond_9
    :goto_a
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    goto :goto_6

    :cond_a
    :goto_b
    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float v2, v2, v22

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    if-ltz v3, :cond_11

    goto :goto_d

    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-eqz v1, :cond_f

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v2, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    const/4 v4, -0x1

    invoke-static {v4, v2, v10, v3}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    goto :goto_9

    :cond_f
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColor:I

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    if-ltz v3, :cond_11

    goto :goto_d

    :cond_11
    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    :goto_d
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    invoke-static {v2, v3, v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    goto :goto_9

    :goto_e
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    const/high16 v25, 0x3fc00000    # 1.5f

    if-eqz v1, :cond_17

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-ltz v1, :cond_17

    if-eq v1, v11, :cond_17

    if-ne v1, v15, :cond_12

    goto :goto_12

    :cond_12
    const/16 v2, 0x8

    if-eq v1, v2, :cond_16

    if-eq v1, v5, :cond_16

    if-ne v1, v6, :cond_13

    goto :goto_11

    :cond_13
    if-eq v1, v7, :cond_15

    const/4 v2, 0x7

    if-ne v1, v2, :cond_14

    goto :goto_f

    :cond_14
    int-to-float v1, v9

    int-to-float v2, v14

    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v13, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_15
    :goto_f
    int-to-float v1, v9

    int-to-float v2, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v13, v3

    sget-object v4, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_10
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v13, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_16
    :goto_11
    int-to-float v1, v9

    int-to-float v2, v14

    goto :goto_10

    :cond_17
    :goto_12
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v3, 0x9

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    const/4 v2, 0x7

    if-eq v1, v2, :cond_21

    const/16 v2, 0x8

    if-eq v1, v2, :cond_21

    if-eq v1, v3, :cond_21

    if-eq v1, v5, :cond_21

    if-eq v1, v6, :cond_21

    if-eq v1, v11, :cond_18

    if-ne v1, v15, :cond_19

    :cond_18
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_16

    :cond_19
    if-eqz v1, :cond_1a

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1b

    :cond_1a
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_15

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v2, v9

    sub-float v3, v2, v16

    int-to-float v4, v14

    sub-float v5, v4, v16

    add-float v2, v2, v16

    add-float v4, v4, v16

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    if-ne v1, v7, :cond_1c

    const/high16 v2, -0x3c4c0000    # -360.0f

    mul-float v3, v10, v2

    float-to-int v2, v3

    move v5, v2

    const/4 v4, 0x0

    goto :goto_13

    :cond_1c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/high16 v2, -0x3c790000    # -270.0f

    mul-float v3, v10, v2

    float-to-int v2, v3

    const/16 v3, -0x5a

    move v5, v2

    const/16 v4, -0x5a

    goto :goto_13

    :cond_1d
    const/high16 v2, 0x43870000    # 270.0f

    mul-float v3, v10, v2

    float-to-int v2, v3

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v4, 0x5a

    if-eqz v3, :cond_1e

    neg-int v2, v2

    :cond_1e
    move v5, v2

    :goto_13
    if-ne v1, v7, :cond_1f

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundKey:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v3, v4

    int-to-float v1, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v26, 0x0

    move/from16 v27, v1

    move-object/from16 v1, p1

    const/4 v12, 0x0

    const/16 v24, 0x7

    const/16 v15, 0x9

    move v7, v4

    const/4 v11, 0x0

    move/from16 v4, v27

    move v15, v5

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_14

    :cond_1f
    move v7, v4

    move v15, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->rect:Landroid/graphics/RectF;

    int-to-float v3, v7

    int-to-float v4, v15

    iget-object v6, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_18

    :goto_15
    int-to-float v1, v9

    int-to-float v2, v14

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v13, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_18

    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v3

    neg-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v12, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_17

    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_17
    int-to-float v1, v9

    int-to-float v2, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v5, v13, v3

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    mul-float v5, v5, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_18

    :cond_21
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_18
    cmpl-float v1, v18, v12

    if-lez v1, :cond_3b

    cmpg-float v1, v10, v17

    if-gez v1, :cond_22

    const/4 v10, 0x0

    goto :goto_19

    :cond_22
    sub-float v3, v10, v17

    div-float v2, v3, v17

    move v10, v2

    :goto_19
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_23

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    :goto_1a
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1c

    :cond_23
    const/16 v2, 0xb

    if-eq v1, v2, :cond_28

    const/4 v2, 0x6

    if-eq v1, v2, :cond_28

    const/4 v2, 0x7

    if-eq v1, v2, :cond_28

    const/16 v2, 0xa

    if-eq v1, v2, :cond_28

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    if-nez v2, :cond_24

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    if-gez v2, :cond_28

    :cond_24
    const/16 v2, 0xe

    if-ne v1, v2, :cond_25

    goto :goto_1b

    :cond_25
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColor:I

    if-eqz v1, :cond_26

    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1c

    :cond_26
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    if-eqz v2, :cond_27

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    goto :goto_1a

    :cond_27
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    goto :goto_1a

    :cond_28
    :goto_1b
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    goto :goto_1a

    :goto_1c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    if-eqz v1, :cond_29

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_29
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v15

    if-gez v1, :cond_2a

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2a
    :goto_1d
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->useDefaultCheck:Z

    if-nez v1, :cond_2b

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    if-ltz v1, :cond_2b

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1e

    :cond_2b
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1e
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    cmpg-float v1, v1, v15

    if-gez v1, :cond_2c

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    sget-object v2, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2c
    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_30

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    int-to-float v1, v9

    sub-float/2addr v1, v6

    int-to-float v2, v14

    sub-float/2addr v2, v6

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v4, v1

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->size:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    const/16 v16, 0xff

    const/16 v20, 0x1f

    const/4 v2, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move/from16 v23, v3

    move/from16 v3, v21

    move v12, v5

    move/from16 v5, v23

    move v15, v6

    move/from16 v6, v16

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    invoke-interface {v1, v11}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2d

    goto :goto_1f

    :cond_2d
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v13, v2

    invoke-virtual {v8, v15, v15, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v18

    mul-float v5, v5, v4

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v8, v15, v15, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_20

    :cond_2e
    :goto_1f
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    mul-float v3, v18, v22

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v5, v13, v18

    invoke-virtual {v8, v15, v15, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v3, Lorg/telegram/ui/Components/CheckBoxBase;->paint:Landroid/graphics/Paint;

    if-eq v1, v3, :cond_2f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2f
    :goto_20
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_30
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_32

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_31

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v4, 0x1

    aput v2, v5, v4

    const/4 v2, 0x0

    invoke-direct {v3, v5, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_31
    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    const v2, 0x3fd47ae1    # 1.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v9

    int-to-float v2, v14

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/Components/CheckBoxBase;->forbidPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_28

    :cond_32
    const/4 v1, 0x0

    const/4 v6, 0x0

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    if-nez v1, :cond_33

    new-instance v1, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_21

    :cond_33
    const/4 v3, 0x1

    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_35

    if-eq v1, v3, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_35

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x417c0000    # 15.75f

    goto :goto_22

    :cond_34
    const/high16 v2, 0x41840000    # 16.5f

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_22

    :cond_35
    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41900000    # 18.0f

    :goto_22
    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    iget v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v9

    int-to-float v3, v14

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v8, v10, v4, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_28

    :cond_36
    const/4 v3, 0x1

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_37

    const v4, 0x3fb33333    # 1.4f

    :goto_24
    const/high16 v1, 0x41100000    # 9.0f

    goto :goto_25

    :cond_37
    const/4 v4, 0x5

    if-ne v1, v4, :cond_38

    const v4, 0x3f4ccccd    # 0.8f

    goto :goto_24

    :cond_38
    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_25
    mul-float v1, v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v10

    mul-float v4, v4, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v9, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v14

    mul-float v4, v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    iget-object v7, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    int-to-float v5, v5

    sub-float v10, v5, v4

    int-to-float v2, v2

    sub-float v4, v2, v4

    invoke-virtual {v7, v10, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v1, v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v1, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    add-float/2addr v5, v1

    sub-float/2addr v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-nez v1, :cond_3a

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_39

    goto :goto_26

    :cond_39
    const/4 v11, 0x0

    goto :goto_27

    :cond_3a
    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkScale:F

    int-to-float v2, v9

    int-to-float v4, v14

    invoke-virtual {v8, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v11, 0x1

    :goto_27
    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v11, :cond_3b

    goto/16 :goto_23

    :cond_3b
    :goto_28
    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-eqz v1, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3c
    return-void
.end method

.method public getDrawUnchecked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->alpha:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundAlpha:F

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColor:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method public setBackgroundType(I)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundType:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x4

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x5

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_5

    :cond_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3ff33333    # 1.9f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_4
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setChecked(IZZ)V
    .locals 2

    .line 0
    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->attachedToWindow:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->animateToCheckedState(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->cancelCheckAnimator()V

    if-eqz p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CheckBoxBase;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->setChecked(IZZ)V

    return-void
.end method

.method public setCirclePaintProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->circlePaintProvider:Lorg/telegram/messenger/GenericProvider;

    return-void
.end method

.method public setColor(III)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->backgroundColorKey:I

    iput p2, p0, Lorg/telegram/ui/Components/CheckBoxBase;->background2ColorKey:I

    iput p3, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkColorKey:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setCuttingCheck(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->cutCheck:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setDrawUnchecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->drawUnchecked:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->enabled:Z

    return-void
.end method

.method public setForbidden(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->forbidden:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setNum(I)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkedText:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progress:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;->setProgress(F)V

    :cond_1
    return-void
.end method

.method public setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->progressDelegate:Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setStrokeBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->strokeBackgroundKey:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxBase;->invalidate()V

    return-void
.end method

.method public setUseDefaultCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxBase;->useDefaultCheck:Z

    return-void
.end method
