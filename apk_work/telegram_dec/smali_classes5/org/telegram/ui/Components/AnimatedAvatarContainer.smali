.class public Lorg/telegram/ui/Components/AnimatedAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private leftPadding:I

.field occupyStatusBar:Z

.field subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->occupyStatusBar:Z

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->leftPadding:I

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v8, v8, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAllowCancel(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAllowCancel(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x96

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v15, v7

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x96

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public getSubtitleTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public getTitle()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    const/high16 p2, 0x42280000    # 42.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->occupyStatusBar:Z

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->leftPadding:I

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p4, 0x8

    if-eq p3, p4, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    iget-object p5, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v0

    add-int/2addr v0, p1

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3, p2, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p4, 0x41300000    # 11.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr v1, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    sub-int/2addr v1, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    add-int/2addr v1, p4

    invoke-virtual {p3, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p4, 0x41a00000    # 20.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v0

    add-int/2addr p1, v0

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p3, p2, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->titleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
