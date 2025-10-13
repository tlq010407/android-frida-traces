.class abstract Lorg/telegram/ui/Components/ShareAlert$SwitchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchView"
.end annotation


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private currentTab:I

.field private lastColor:I

.field private leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private searchBackground:Landroid/view/View;

.field private slidingView:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$Gz65tfWUJ0oUjpcLGeUHPgHeN4U(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$alTjDS7GeRXibn1eun3Oa4vYQmU(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 11

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->searchBackground:Landroid/view/View;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->searchBackground:Landroid/view/View;

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x42100000    # 36.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$SwitchView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/content/Context;Lorg/telegram/ui/Components/ShareAlert;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_tabs_mic1:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$string;->VoipGroupInviteCanSpeak:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_tabs_mic2:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->VoipGroupInviteListenOnly:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->lastColor:I

    return p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)Landroid/graphics/LinearGradient;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->switchToTab(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->switchToTab(I)V

    return-void
.end method

.method private switchToTab(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    new-array v5, v1, [F

    aput v4, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->onTabSwitch(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->leftTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->rightTab:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->slidingView:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->currentTab:I

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected abstract onTabSwitch(I)V
.end method
