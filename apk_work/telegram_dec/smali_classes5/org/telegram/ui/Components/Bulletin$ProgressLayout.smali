.class public Lorg/telegram/ui/Components/Bulletin$ProgressLayout;
.super Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressLayout"
.end annotation


# instance fields
.field public imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private inprogress:Z

.field public progress:F

.field public progressView:Landroid/widget/FrameLayout;

.field public textView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$ProgressLayout$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Bulletin$ProgressLayout$1;-><init>(Lorg/telegram/ui/Components/Bulletin$ProgressLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->progressView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->progressView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v2, 0x42000000    # 32.0f

    const v3, 0x800013

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->progressView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x1c

    const/16 v3, 0x11

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, v1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v6, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x41900000    # 18.0f

    const v2, 0x800013

    const/high16 v3, 0x42600000    # 56.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->setTextColor(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(I)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setProgress(F)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->inprogress:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v0, v4, :cond_4

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->inprogress:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->inprogress:Z

    const v2, 0x3f47ae14    # 0.78f

    if-eqz v1, :cond_2

    const v1, 0x3f47ae14    # 0.78f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->inprogress:Z

    if-eqz v1, :cond_3

    const v3, 0x3f47ae14    # 0.78f

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->progress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method
