.class public Lorg/telegram/ui/Cells/LocationCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;


# instance fields
.field private addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private allowTextAnimation:Z

.field private circleDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private enterAlpha:F

.field private enterAnimator:Landroid/animation/ValueAnimator;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastCompleteTitle:Ljava/lang/CharSequence;

.field private lastEmoji:Ljava/lang/String;

.field private lastTitle:Ljava/lang/String;

.field private nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private wrapContent:Z


# direct methods
.method public static synthetic $r8$lambda$4f04vaATkMfuscwU_dWvsY5S0MM(Lorg/telegram/ui/Cells/LocationCell;JJFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Cells/LocationCell;->lambda$setLocation$0(JJFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v3, p2

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/LocationCell;->wrapContent:Z

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/LocationCell;->circleDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eqz v4, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    or-int/lit8 v10, v7, 0x30

    const/high16 v7, 0x41700000    # 15.0f

    if-eqz v4, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/high16 v11, 0x41700000    # 15.0f

    :goto_1
    if-eqz v4, :cond_2

    const/high16 v13, 0x41700000    # 15.0f

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x0

    const/16 v8, 0x2a

    const/high16 v9, 0x42280000    # 42.0f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v2, 0x1

    invoke-direct {v7, v1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x15e

    const v8, 0x3ecccccd    # 0.4f

    move-object v13, v14

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setScaleProperty(F)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/LocationCell;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    goto :goto_3

    :cond_3
    const/4 v7, 0x3

    :goto_3
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v3

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_4

    const/4 v8, 0x5

    goto :goto_4

    :cond_4
    const/4 v8, 0x3

    :goto_4
    or-int/lit8 v17, v8, 0x30

    const/16 v22, 0x49

    const/16 v23, 0x10

    if-eqz v7, :cond_5

    const/16 v8, 0x10

    goto :goto_5

    :cond_5
    const/16 v8, 0x49

    :goto_5
    int-to-float v8, v8

    if-eqz v7, :cond_6

    const/16 v7, 0x49

    goto :goto_6

    :cond_6
    const/16 v7, 0x10

    :goto_6
    int-to-float v7, v7

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x41b00000    # 22.0f

    const/high16 v19, 0x41200000    # 10.0f

    move/from16 v18, v8

    move/from16 v20, v7

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setScaleProperty(F)V

    iget-object v8, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x15e

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/LocationCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    goto :goto_7

    :cond_7
    const/4 v2, 0x3

    :goto_7
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v5, 0x5

    :cond_8
    or-int/lit8 v8, v5, 0x30

    if-eqz v2, :cond_9

    const/16 v3, 0x10

    goto :goto_8

    :cond_9
    const/16 v3, 0x49

    :goto_8
    int-to-float v9, v3

    if-eqz v2, :cond_a

    const/16 v2, 0x49

    goto :goto_9

    :cond_a
    const/16 v2, 0x10

    :goto_9
    int-to-float v11, v2

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v10, 0x420c0000    # 35.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, v0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v2, v0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static getColorForIndex(I)I
    .locals 1

    rem-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const p0, -0x139c75

    return p0

    :cond_0
    const p0, -0xbc4629

    return p0

    :cond_1
    const p0, -0x788e03

    return p0

    :cond_2
    const p0, -0xc9389a

    return p0

    :cond_3
    const p0, -0xba620b

    return p0

    :cond_4
    const p0, -0xd3fb5

    return p0

    :cond_5
    const p0, -0x149fa0

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getTitle(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)Ljava/lang/CharSequence;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationCell;->lastEmoji:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationCell;->lastTitle:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationCell;->lastCompleteTitle:Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/Cells/LocationCell;->lastEmoji:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Cells/LocationCell;->lastTitle:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Cells/LocationCell;->lastCompleteTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private synthetic lambda$setLocation$0(JJFFLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-float p1, v0

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const-wide/16 v0, 0x0

    cmp-long p7, p3, v0

    if-gtz p7, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-static {p5, p6, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    iget-object p2, p0, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget p2, p0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget p2, p0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    sget-object v0, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/LocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sput-object v0, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v0, v0

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int v0, v0, v6

    int-to-float v0, v0

    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    sget-object v0, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    sget-object v0, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    sget-object v0, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v10, v0

    iget v0, p0, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, v2, v0

    float-to-int v11, v2

    const/4 v8, 0x0

    const/16 v12, 0x1f

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Lorg/telegram/ui/Cells/LocationCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/LocationCell;->needDivider:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/LocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "paintDivider"

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_3
    move-object v7, v0

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42900000    # 72.0f

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_3
    int-to-float v0, v0

    move v5, v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v6, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/LocationCell;->wrapContent:Z

    const/high16 v0, 0x42800000    # 64.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/LocationCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setAllowTextAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/LocationCell;->allowTextAnimation:Z

    return-void
.end method

.method public setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;IZ)V
    .locals 6

    .line 0
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;IZZ)V
    .locals 15

    .line 0
    move-object v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    iput-boolean v2, v8, Lorg/telegram/ui/Cells/LocationCell;->needDivider:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v4, v8, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/LocationCell;->getTitle(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-boolean v6, v8, Lorg/telegram/ui/Cells/LocationCell;->allowTextAnimation:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_0

    if-eqz p5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    if-eqz v1, :cond_3

    iget-object v4, v8, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean v5, v8, Lorg/telegram/ui/Cells/LocationCell;->allowTextAnimation:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, v8, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iget-boolean v5, v8, Lorg/telegram/ui/Cells/LocationCell;->allowTextAnimation:Z

    if-eqz v5, :cond_4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_4

    if-eqz p5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_5
    :goto_3
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Cells/LocationCell;->getColorForIndex(I)I

    move-result v1

    if-eqz v0, :cond_8

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v5, "pin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    const-string v5, "emoji"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, v8, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->pin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Cells/LocationCell;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iget-object v4, v8, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_5
    iget-object v4, v8, Lorg/telegram/ui/Cells/LocationCell;->circleDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    if-nez v0, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v8, Lorg/telegram/ui/Cells/LocationCell;->enterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    if-nez v0, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    iget v10, v8, Lorg/telegram/ui/Cells/LocationCell;->enterAlpha:F

    if-eqz v9, :cond_c

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_8

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_8
    sub-float v0, v10, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    mul-float v0, v0, v1

    float-to-long v11, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v10, v0, v3

    aput v7, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Cells/LocationCell;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v13, v8, Lorg/telegram/ui/Cells/LocationCell;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v14, Lorg/telegram/ui/Cells/LocationCell$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move-wide v4, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/LocationCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/LocationCell;JJFF)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Cells/LocationCell;->enterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_d

    const-wide v11, 0x7fffffffffffffffL

    :cond_d
    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lorg/telegram/ui/Cells/LocationCell;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v8, Lorg/telegram/ui/Cells/LocationCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Cells/LocationCell;->nameTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Cells/LocationCell;->addressTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
