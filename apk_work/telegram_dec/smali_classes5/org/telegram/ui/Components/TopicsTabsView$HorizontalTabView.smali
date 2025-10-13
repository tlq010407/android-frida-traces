.class public Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TopicsTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalTabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$Factory;
    }
.end annotation


# instance fields
.field private avatarSpan:Lorg/telegram/ui/AvatarSpan;

.field private counterAnimator:Landroid/animation/ValueAnimator;

.field private counterBackgroundColorKey:I

.field private final counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final counterView:Landroid/view/View;

.field counterViewX:I

.field private final currentAccount:I

.field private isAdd:Z

.field private lastMention:Z

.field private lastReactions:Z

.field private lastUnread:I

.field private mentionString:Ljava/lang/CharSequence;

.field private mono:Z

.field private pinned:Z

.field private reactionString:Ljava/lang/CharSequence;

.field private reorder:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selected:Z

.field private final shakeAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shaker:Lorg/telegram/ui/Components/Shaker;

.field private staticImage:Z

.field private final textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private topicId:J


# direct methods
.method public static synthetic $r8$lambda$CAUY9cu7iJQQ5ROLvCeKkqJLX6E(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lambda$animateCounterBounce$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T-DsO-Fi3-FwdP_MUlURVFg_7rA(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lambda$setSelected$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x168

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->shakeAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->isAdd:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->mono:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->staticImage:Z

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    iput v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterBackgroundColorKey:I

    iput p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v0, 0x1

    const v1, 0x416a8f5c    # 14.66f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x13

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance p2, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x15

    const v3, 0x40951eb8    # 4.66f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getTextColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectT:F

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectT:F

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterBackgroundColorKey:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->pinned:Z

    return p0
.end method

.method private animateCounterBounce()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$3;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getMeasuringWidth()I
    .locals 5

    const v0, 0x418547ae    # 16.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const v3, 0x40951eb8    # 4.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method private getTextColor()I
    .locals 3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->isAdd:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectT:F

    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$animateCounterBounce$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSelected$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectT:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

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

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->reactionString:Ljava/lang/CharSequence;

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

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->reactionString:Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->reactionString:Ljava/lang/CharSequence;

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
    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->mentionString:Ljava/lang/CharSequence;

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

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->mentionString:Ljava/lang/CharSequence;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->mentionString:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    if-lez p2, :cond_6

    if-eqz p1, :cond_5

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    goto :goto_2

    :cond_5
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    int-to-long v0, p2

    const/16 v2, 0x2c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterBackgroundColorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v0, ""

    goto :goto_0

    :goto_3
    if-eqz p5, :cond_9

    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lastUnread:I

    if-lt p1, p2, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lastMention:Z

    if-nez p1, :cond_7

    if-nez p3, :cond_8

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lastReactions:Z

    if-nez p1, :cond_9

    if-eqz p4, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->animateCounterBounce()V

    :cond_9
    iput p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lastUnread:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lastMention:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->lastReactions:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getMeasuringWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eq p1, p2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-void
.end method

.method private setLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->mono:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->mono:Z

    return-void
.end method

.method private setPinned(ZZ)V
    .locals 0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->pinned:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->pinned:Z

    :cond_0
    return-void
.end method

.method private updateTextColor()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setEmojiColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->shakeAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->reorder:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->shaker:Lorg/telegram/ui/Components/Shaker;

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/Shaker;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Shaker;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->shaker:Lorg/telegram/ui/Components/Shaker;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->shaker:Lorg/telegram/ui/Components/Shaker;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/Shaker;->concat(Landroid/graphics/Canvas;F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getTopicId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    return-wide v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    div-int/lit8 p5, p5, 0x2

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p5, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p5

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p4, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p5, v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p5, p2

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p4, v0

    const v0, 0x40951eb8    # 4.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p5, v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    invoke-virtual {p1, p4, v1, p2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterViewX:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterViewX:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    neg-int p2, p2

    iget p4, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterViewX:I

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->counterViewX:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->getMeasuringWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setLayout(Z)V

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

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
    iput-wide v3, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->staticImage:Z

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v2, v5, :cond_2

    const-string v2, "#"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v2, :cond_1

    const-string v2, "\u200b"

    goto :goto_1

    :cond_1
    const-string v2, " "

    :goto_1
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v3, 0x3f28f5c3    # 0.66f

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/16 v3, 0x12

    :goto_2
    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_2
    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-eqz v4, :cond_3

    const-string v2, "x "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    iget-object v7, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-direct {v2, v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    const/16 v3, 0x21

    goto :goto_2

    :cond_3
    :goto_3
    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v0, :cond_4

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v1

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setCounter(ZIZZZ)V

    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setAdd()V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setLayout(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->isAdd:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->staticImage:Z

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "e\u200b"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->menu_topic_add:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setAll(ZZ)V
    .locals 8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setLayout(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->isAdd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->staticImage:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->AllTopicsShort:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setLoading()V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setLayout(Z)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->staticImage:Z

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "x"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/LoadingSpan;->setScaleY(F)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setSelected(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->updateTextColor()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setMf(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 10

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setLayout(Z)V

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    const/4 v6, 0x0

    cmp-long v7, v4, v2

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iput-wide v2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->topicId:J

    iput-boolean v6, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->staticImage:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->avatarSpan:Lorg/telegram/ui/AvatarSpan;

    if-nez v4, :cond_1

    new-instance v4, Lorg/telegram/ui/AvatarSpan;

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget v8, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->currentAccount:I

    const/high16 v9, 0x41900000    # 18.0f

    invoke-direct {v4, v5, v8, v9}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    iput-object v4, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->avatarSpan:Lorg/telegram/ui/AvatarSpan;

    iput-boolean v6, v4, Lorg/telegram/ui/AvatarSpan;->usePaintAlpha:Z

    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v8, "x  "

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->avatarSpan:Lorg/telegram/ui/AvatarSpan;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/AvatarSpan;->setObject(Lorg/telegram/tgnet/TLObject;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->avatarSpan:Lorg/telegram/ui/AvatarSpan;

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/high16 v8, 0x43160000    # 150.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setSelected(Z)V

    iget v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v1

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setCounter(ZIZZZ)V

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setPinned(ZZ)V

    return-void
.end method

.method public setReorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->reorder:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selected:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selected:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectT:F

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

    iput-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;-><init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
