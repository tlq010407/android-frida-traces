.class public Lorg/telegram/ui/Components/TextViewSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getCurrentView()Landroid/view/View;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Landroid/widget/TextView;
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic getNextView()Landroid/view/View;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getNextView()Landroid/widget/TextView;
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;ZZ)Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)Z
    .locals 0

    .line 0
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getNextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
