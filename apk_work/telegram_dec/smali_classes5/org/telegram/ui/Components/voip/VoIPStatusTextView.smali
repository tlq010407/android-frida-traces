.class public Lorg/telegram/ui/Components/voip/VoIPStatusTextView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field animationInProgress:Z

.field animator:Landroid/animation/ValueAnimator;

.field backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

.field badConnectionLayer:Landroid/widget/FrameLayout;

.field badConnectionTextView:Landroid/widget/TextView;

.field nextTextToSet:Ljava/lang/CharSequence;

.field reconnectTextView:Landroid/widget/TextView;

.field textView:[Landroid/widget/TextView;

.field timerShowing:Z

.field timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;


# direct methods
.method public static synthetic $r8$lambda$7qpEzghzXJzSCxBxECkhuY5Xs_4(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->lambda$replaceViews$1(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a7CBLmpfBBhynmxzYc4BDBqvIb8(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->lambda$setText$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V
    .locals 13

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, -0x1

    if-ge v3, v1, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {p2, v3, v7, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->VoipWeakNetwork:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/high16 v10, 0x42300000    # 44.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->VoipReconnecting:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v4, "."

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    new-array v7, v0, [Landroid/view/View;

    aput-object v6, v7, v2

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;-><init>([Landroid/view/View;)V

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/voip/VoIPTimerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    const/high16 p1, -0x40000000    # -2.0f

    invoke-static {v5, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$replaceViews$1(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    const/high16 p0, 0x40c00000    # 6.0f

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setText$0()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v0, v1

    aput-object v2, v0, v3

    return-void
.end method

.method private replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public setDrawCallIcon()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setDrawCallIcon()V

    return-void
.end method

.method public setSignalBarCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setSignalBarCount(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/SpannableString;

    const-string v2, "."

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;-><init>([Landroid/view/View;)V

    const/16 v3, 0x21

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, p2

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-nez p3, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    if-eqz p2, :cond_4

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    return-void

    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p1, v1

    aget-object p1, p1, v0

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V

    invoke-direct {p0, p2, p1, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public showBadConnection(ZZ)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    const-wide/16 v3, 0x12c

    const/4 p2, 0x0

    const v5, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->badConnectionLayer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$4;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public showReconnect(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x96

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$3;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public showTimer(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updateTimer()V

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    if-eqz p1, :cond_4

    const-string p1, "timer"

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    return-void

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
