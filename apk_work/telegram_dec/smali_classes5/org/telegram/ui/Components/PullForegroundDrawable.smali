.class public abstract Lorg/telegram/ui/Components/PullForegroundDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;
    }
.end annotation


# instance fields
.field private accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

.field private accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

.field private accentRevalProgress:F

.field private accentRevalProgressOut:F

.field private animateOut:Z

.field private animateToColorize:Z

.field private animateToEndText:Z

.field private animateToTextIn:Z

.field private arrowAnimateTo:Z

.field private final arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

.field private arrowRotateAnimator:Landroid/animation/ValueAnimator;

.field private arrowRotateProgress:F

.field private avatarBackgroundColorKey:I

.field private backgroundActiveColorKey:I

.field private backgroundColorKey:I

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private bounceIn:Z

.field private bounceProgress:F

.field private cell:Landroid/view/View;

.field private changeAvatarColor:Z

.field private final circleClipPath:Landroid/graphics/Path;

.field private generalTopicDrawable:Landroid/graphics/drawable/Drawable;

.field private isOut:Z

.field private lastWidth:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private outAnimator:Landroid/animation/AnimatorSet;

.field public outCx:F

.field public outCy:F

.field public outImageSize:F

.field public outOverScroll:F

.field public outProgress:F

.field public outRadius:F

.field private final paintBackgroundAccent:Landroid/graphics/Paint;

.field private final paintSecondary:Landroid/graphics/Paint;

.field private final paintWhite:Landroid/graphics/Paint;

.field public pullProgress:F

.field private pullTooltipLayout:Landroid/text/StaticLayout;

.field private pullTooltipLayoutLeft:F

.field private pullTooltipLayoutScale:F

.field private pullTooltipLayoutWidth:F

.field private final pullTooltipText:Ljava/lang/CharSequence;

.field private final rectF:Landroid/graphics/RectF;

.field private releaseTooltipLayout:Landroid/text/StaticLayout;

.field private releaseTooltipLayoutLeft:F

.field private releaseTooltipLayoutScale:F

.field private releaseTooltipLayoutWidth:F

.field private final releaseTooltipText:Ljava/lang/CharSequence;

.field public scrollDy:I

.field private textInProgress:F

.field textInRunnable:Ljava/lang/Runnable;

.field private textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private textIntAnimator:Landroid/animation/ValueAnimator;

.field private textSwappingProgress:F

.field private textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private textSwipingAnimator:Landroid/animation/ValueAnimator;

.field private final tooltipTextPaint:Landroid/text/TextPaint;

.field private touchSlop:F

.field wasSendCallback:Z

.field private willDraw:Z


# direct methods
.method public static synthetic $r8$lambda$5YJBXAxzwnvZOTMKdySZJIxml8Q(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$startOutAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$627MkSRbyK3KACeUBHwiClA89Y0(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8_P5dJC-_jsZDGpbWLwW-niYCFk(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LAXB29WfJ53_RLfTL_RieN8Kbgs(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$colorize$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dZdOnHy94UndV-QwFkBKkCeo9co(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$startOutAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjusHLNMhp3ArwJ6_QjenuiFjIM(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$startOutAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubxBDYNd-cRQCWbjeEeqlOs4jEs(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$colorize$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPY0-M7eNmXw00Zu8dxTKPSpsuc(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->lambda$updateTextProgress$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackgroundActive:I

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundActiveColorKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$1;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->touchSlop:F

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->generalTopicDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PullForegroundDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PullForegroundDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PullForegroundDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PullForegroundDrawable;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PullForegroundDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private checkTextLayouts(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->lastWidth:I

    if-eq v1, v2, :cond_6

    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-float v4, v1

    div-float v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    iput v8, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v5

    :cond_1
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipText:Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v6

    move v12, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    int-to-float v5, v5

    iput v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v6, Landroid/graphics/Point;->x:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    if-ge v5, v9, :cond_3

    iget-object v9, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    div-float/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    iput v8, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v4

    :cond_4
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipText:Ljava/lang/CharSequence;

    iget-object v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, v13

    move v8, v4

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->lastWidth:I

    :cond_6
    return-void
.end method

.method public static getMaxOverscroll()I
    .locals 1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$colorize$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$colorize$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startOutAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTextProgress$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setOutProgress(F)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    iget p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundActiveColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Arrow1.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v1, "Arrow2.**"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    const/4 p1, 0x1

    sput-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    :cond_0
    return-void
.end method

.method private textIn()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->touchSlop:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    iput-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextProgress(F)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eq v3, p1, :cond_6

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    iget v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    if-eqz p1, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    new-array v7, v0, [F

    aput v3, v7, v1

    aput v6, v7, v2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xaa

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    if-eq p1, v3, :cond_9

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    if-eqz v3, :cond_8

    const/4 v4, 0x0

    :cond_8
    new-array v0, v0, [F

    aput p1, v0, v1

    aput v4, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void
.end method


# virtual methods
.method public colorize(Z)V
    .locals 5

    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eq v1, p1, :cond_3

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    const-wide/16 v1, 0xe6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    :cond_0
    iput v4, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    :cond_2
    iput v4, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorOut:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doNotShow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwipingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalAnimatorIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToEndText:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowAnimateTo:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    iput v2, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    if-nez v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    instance-of v9, v1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v9, :cond_1

    const/high16 v1, 0x41700000    # 15.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41e00000    # 28.0f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getViewOffset()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    if-eqz v5, :cond_2

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const v6, 0x3d8f5c29    # 0.07f

    mul-float v5, v5, v6

    const v6, 0x3d4ccccd    # 0.05f

    sub-float/2addr v5, v6

    :goto_1
    move v13, v5

    goto :goto_2

    :cond_2
    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    const v6, 0x3ca3d70a    # 0.02f

    mul-float v5, v5, v6

    goto :goto_1

    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v1, 0x4

    sub-int/2addr v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->checkTextLayouts(I)V

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->updateTextProgress(F)V

    iget v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v5, v5, v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v15

    if-lez v7, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_3
    iget v7, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    iget v10, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    if-eqz p2, :cond_4

    int-to-float v6, v3

    add-float/2addr v10, v6

    :cond_4
    add-int v6, v1, v12

    iget-object v14, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v11

    sub-int/2addr v14, v12

    if-eqz p2, :cond_5

    add-int/2addr v14, v3

    :cond_5
    mul-int/lit8 v16, v11, 0x2

    add-int v15, v2, v16

    move/from16 v16, v9

    if-le v4, v15, :cond_6

    move/from16 v18, v12

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    int-to-float v9, v4

    move/from16 v18, v12

    int-to-float v12, v15

    div-float/2addr v9, v12

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_7

    const/high16 v19, 0x40800000    # 4.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    move/from16 v19, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move/from16 v20, v11

    add-int/lit8 v11, v3, 0x1

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v12, v2, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_4

    :cond_7
    move/from16 v19, v2

    move/from16 v21, v3

    move/from16 v20, v11

    const/4 v3, 0x0

    :goto_4
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-nez v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_8

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_8
    move/from16 v22, v13

    goto :goto_5

    :cond_9
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    mul-float v12, v2, v13

    add-float/2addr v2, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    sub-float/2addr v12, v3

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v3, v17, v3

    mul-float v12, v12, v3

    add-float/2addr v2, v12

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_a

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v10, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    sub-float v12, v7, v2

    sub-float v11, v10, v2

    move/from16 v22, v13

    add-float v13, v7, v2

    add-float/2addr v2, v10

    invoke-virtual {v3, v12, v11, v13, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->circleClipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_5
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eqz v2, :cond_c

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_c
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgress:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v12, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v6

    sub-float v3, v7, v2

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v11

    int-to-float v12, v14

    sub-float v13, v10, v12

    mul-float v13, v13, v11

    invoke-virtual {v8, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->accentRevalProgressOut:F

    mul-float v3, v3, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    goto :goto_6

    :cond_e
    :goto_7
    const/high16 v11, 0x437f0000    # 255.0f

    if-le v4, v15, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v3, v5

    const v3, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v3

    mul-float v5, v5, v9

    mul-float v5, v5, v11

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    move/from16 v12, v20

    int-to-float v4, v12

    add-int v5, v1, v19

    int-to-float v5, v5

    add-int v13, v12, v21

    add-int v13, v13, v18

    :goto_8
    int-to-float v13, v13

    invoke-virtual {v2, v3, v4, v5, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    :cond_f
    move/from16 v12, v20

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v5, v12

    sub-int v5, v5, v21

    int-to-float v4, v5

    add-int v5, v1, v19

    int-to-float v5, v5

    iget-object v13, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    goto :goto_8

    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->rectF:Landroid/graphics/RectF;

    move/from16 v13, v18

    int-to-float v3, v13

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_10
    move/from16 v13, v18

    move/from16 v12, v20

    :goto_a
    if-eqz p2, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_11
    if-eqz v16, :cond_12

    int-to-float v2, v14

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x42240000    # 41.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v14, v2

    :cond_12
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/16 v18, 0x1

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_14

    if-eqz v16, :cond_13

    goto :goto_b

    :cond_13
    move/from16 v20, v7

    move/from16 v21, v10

    goto/16 :goto_d

    :cond_14
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    mul-float v4, v9, v11

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v6

    int-to-float v3, v14

    int-to-float v4, v13

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v11, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    shr-int/lit8 v5, v5, 0x1

    move/from16 v20, v7

    sub-int v7, v6, v5

    shr-int/lit8 v4, v4, 0x1

    move/from16 v21, v10

    sub-int v10, v14, v4

    add-int/2addr v5, v6

    add-int/2addr v14, v4

    invoke-virtual {v11, v7, v10, v5, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowRotateProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const/4 v7, 0x0

    cmpg-float v10, v4, v7

    if-gez v10, :cond_15

    const/4 v4, 0x0

    :cond_15
    sub-float v4, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v7, 0x43340000    # 180.0f

    mul-float v7, v7, v4

    invoke-virtual {v8, v7, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float v2, v2, v5

    sub-float/2addr v2, v4

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToColorize:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    goto :goto_c

    :cond_16
    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    :goto_c
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_d
    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIn()V

    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v15

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v10, v2, v3

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v16, :cond_18

    mul-int/lit8 v1, v1, 0x2

    goto :goto_e

    :cond_18
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1a

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_19

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v3

    const v3, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    sub-float v15, v2, v4

    mul-float v3, v3, v15

    add-float/2addr v3, v10

    invoke-virtual {v8, v1, v1, v11, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    mul-float v1, v1, v9

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    mul-float v1, v1, v2

    float-to-int v7, v1

    const/4 v3, 0x0

    const/16 v14, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v15, v6

    move v6, v7

    move/from16 v23, v20

    move v7, v14

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    sub-float v1, v11, v1

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v10

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutScale:F

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayoutWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_1a
    move v15, v6

    move/from16 v23, v20

    :cond_1b
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1d

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1c

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    sub-float v1, v2, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float v2, v2, v3

    sub-float v2, v10, v2

    invoke-virtual {v8, v1, v1, v11, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    mul-float v1, v1, v9

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    mul-float v1, v1, v2

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    sub-float/2addr v11, v1

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v11, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    mul-float v1, v1, v2

    add-float/2addr v10, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v10, v1

    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutScale:F

    iget v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayoutWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->releaseTooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textSwappingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1d

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v16, :cond_1f

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->changeAvatarColor:Z

    if-eqz v1, :cond_1f

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v12

    sub-int/2addr v2, v13

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    iget v6, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    add-float v3, v3, v22

    int-to-float v5, v15

    move/from16 v7, v23

    sub-float/2addr v5, v7

    sub-float v15, v4, v6

    mul-float v5, v5, v15

    int-to-float v2, v2

    sub-float v2, v2, v21

    mul-float v2, v2, v15

    invoke-virtual {v8, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v10, v21

    invoke-virtual {v8, v3, v3, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v2, :cond_1e

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Arrow1.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Arrow2.**"

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    sput-boolean v18, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    :cond_1e
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float v3, v7, v1

    float-to-int v3, v3

    sub-float v4, v10, v1

    float-to-int v4, v4

    add-float/2addr v7, v1

    float-to-int v5, v7

    add-float/2addr v10, v1

    float-to-int v1, v10

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    :goto_10
    return-void
.end method

.method public drawOverScroll(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected abstract getViewOffset()F
.end method

.method public isDraw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetText()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textIntAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->textInProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateToTextIn:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->wasSendCallback:Z

    return-void
.end method

.method public setCell(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->cell:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->updateColors()V

    return-void
.end method

.method public setListView(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public setWillDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->willDraw:Z

    return-void
.end method

.method public showHidden()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setOutProgress(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->isOut:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    return-void
.end method

.method public startOutAnimation()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->animateOut:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceIn:Z

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->bounceProgress:F

    iget-object v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outOverScroll:F

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v6, v2, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x87

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/PullForegroundDrawable$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable$2;-><init>(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v4, v7, v0

    aput-object v6, v7, v1

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 v6, 0xb4

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v0

    aput-object v5, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public updateColors()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->tooltipTextPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintWhite:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintSecondary:Landroid/graphics/Paint;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->arrowDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable$ArrowDrawable;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->paintBackgroundAccent:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/PullForegroundDrawable;->avatarBackgroundColorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
