.class public Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TopicsTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalTabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;
    }
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private countScale:F

.field private counterAnimator:Landroid/animation/ValueAnimator;

.field private counterBackgroundColorKey:I

.field private final counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final currentAccount:I

.field private final imageLayoutView:Landroid/widget/FrameLayout;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final imageViewParams:Landroid/widget/FrameLayout$LayoutParams;

.field private isAdd:Z

.field private lastMention:Z

.field private lastReactions:Z

.field private lastUnread:I

.field private final layout:Landroid/widget/LinearLayout;

.field private final lineView:Landroid/view/View;

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private mentionString:Ljava/lang/CharSequence;

.field private mono:Z

.field private pinned:Z

.field private reactionString:Ljava/lang/CharSequence;

.field private reorder:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selected:Z

.field private shaker:Lorg/telegram/ui/Components/Shaker;

.field private staticImage:Z

.field private final textView:Landroid/widget/TextView;

.field private topicId:J


# direct methods
.method public static synthetic $r8$lambda$nUmeB4RAwrPjocveR25TZsEApvg(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lambda$animateCounterBounce$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oLmUvK2qIKlO7Aj_gF3CkoVIUHw(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lambda$setSelected$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->mono:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->pinned:Z

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    iput v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterBackgroundColorKey:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->countScale:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    iput p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance v2, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;

    invoke-direct {v2, p0, p1, p3}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v0, v4, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, -0x1

    const/4 v4, -0x2

    invoke-static {v0, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v4, 0x1e

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageViewParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    invoke-static {v2, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v10, 0x4

    const/4 v11, 0x4

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lineView:Landroid/view/View;

    const p1, 0x40151eb8    # 2.33f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v0, 0x6

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x73

    const/high16 v3, -0x3fc00000    # -3.0f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->reorder:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/Shaker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->shaker:Lorg/telegram/ui/Components/Shaker;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Lorg/telegram/ui/Components/Shaker;)Lorg/telegram/ui/Components/Shaker;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->shaker:Lorg/telegram/ui/Components/Shaker;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->countScale:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->countScale:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterBackgroundColorKey:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageLayoutView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateImageColor()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->pinned:Z

    return p0
.end method

.method private animateCounterBounce()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$animateCounterBounce$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->countScale:F

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSelected$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateImageColor()V

    return-void
.end method

.method private setCounter(ZIZZZ)V
    .locals 8

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz p4, :cond_1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogReactionMentionBackground:I

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->reactionString:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string v6, "\u2764\ufe0f"

    invoke-direct {p1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v7, Lorg/telegram/messenger/R$drawable;->reactionchatslist:I

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v6, v5, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    iput v4, v6, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v6, v3, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v6, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->reactionString:Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->reactionString:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, v0, p5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_1
    if-eqz p3, :cond_4

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    goto :goto_1

    :cond_2
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->mentionString:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string v6, "@"

    invoke-direct {p1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v7, Lorg/telegram/messenger/R$drawable;->mentionchatslist:I

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v6, v5, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    iput v4, v6, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v6, v3, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/4 v2, 0x1

    invoke-virtual {p1, v6, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->mentionString:Ljava/lang/CharSequence;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->mentionString:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    if-lez p2, :cond_6

    if-eqz p1, :cond_5

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    goto :goto_2

    :cond_5
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    int-to-long v0, p2

    const/16 v2, 0x2c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v0, ""

    goto :goto_0

    :goto_3
    if-eqz p5, :cond_9

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lastUnread:I

    if-lt p1, p2, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lastMention:Z

    if-nez p1, :cond_7

    if-nez p3, :cond_8

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lastReactions:Z

    if-nez p1, :cond_9

    if-eqz p4, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->animateCounterBounce()V

    :cond_9
    iput p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lastUnread:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lastMention:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lastReactions:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setLayout(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->mono:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->mono:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_1

    const/high16 v1, 0x42100000    # 36.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageLayoutView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/high16 v1, 0x40e00000    # 7.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x40800000    # 4.0f

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageViewParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x41e00000    # 28.0f

    if-eqz p1, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageViewParams:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    :goto_3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-void
.end method

.method private setPinned(ZZ)V
    .locals 0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->pinned:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->pinned:Z

    :cond_0
    return-void
.end method

.method private updateImageColor()V
    .locals 4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setEmojiColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateState()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lineView:Landroid/view/View;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->lineView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget-boolean v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    :goto_1
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p1, 0x42800000    # 64.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setLayout(Z)V

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    iput-wide v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v1, v5, :cond_1

    iput-boolean v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const v2, 0x3f28f5c3    # 0.66f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_1
    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmp-long v8, v1, v3

    if-eqz v8, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v8, 0x3

    invoke-static {v4, v8, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateImageColor()V

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v2, v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v1

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget v4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setCounter(ZIZZZ)V

    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setPinned(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    return-void
.end method

.method public setAdd(ZZ)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setLayout(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NewTopic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new3:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateImageColor()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setCounter(ZIZZZ)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setAll(ZZ)V
    .locals 8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setLayout(Z)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->AllTopicsSide:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->other_chats:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateImageColor()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setLoading()V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setLayout(Z)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "x"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-direct {v3, v4, v6}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/LoadingSpan;->setScaleY(F)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v3, 0x3e19999a    # 0.15f

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const v6, 0x3f19999a    # 0.6f

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v2, v4, v5, v6, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iput-boolean v0, v1, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateImageColor()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setPinned(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    return-void
.end method

.method public setMf(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 13

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setLayout(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->isAdd:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->staticImage:Z

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-wide v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->topicId:J

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->textView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    if-ltz v7, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_2

    :cond_1
    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->updateState()V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setSelected(Z)V

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    if-lez p1, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    move v12, v4

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setReorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->reorder:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selected:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selected:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectT:F

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
