.class public Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private bottomPadding:I

.field private fixedSize:I

.field private isRTL:Z

.field private linkTextColorKey:I

.field private linkTextRippleColor:Ljava/lang/Integer;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private text:Ljava/lang/CharSequence;

.field private textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private topPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    iput v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->linkTextColorKey:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->topPadding:I

    const/16 v0, 0x11

    iput v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->bottomPadding:I

    iput-object p3, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v0, p0, p1, v1, p3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;-><init>(Lorg/telegram/ui/Cells/TextInfoPrivacyCell;Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p1, 0x1

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {v0, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setEmojiColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget p3, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->linkTextColorKey:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_1

    const/4 v0, 0x5

    :cond_1
    or-int/lit8 v6, v0, 0x30

    int-to-float v9, p2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    move v7, v9

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->isRTL:Z

    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/TextInfoPrivacyCell;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->linkTextRippleColor:Ljava/lang/Integer;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected afterTextDraw()V
    .locals 0

    return-void
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget p2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->fixedSize:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-ne p2, v0, :cond_0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->fixedSize:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected onTextDraw()V
    .locals 0

    return-void
.end method

.method public setBottomPadding(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->bottomPadding:I

    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-static {v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setFixedSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->fixedSize:I

    return-void
.end method

.method public setLinkTextColorKey(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->linkTextColorKey:I

    return-void
.end method

.method public setLinkTextRippleColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->linkTextRippleColor:Ljava/lang/Integer;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->text:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->text:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-nez p1, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->topPadding:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->bottomPadding:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    if-nez v1, :cond_1

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v5, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v3, v0, 0x2

    const/16 v5, 0x21

    invoke-virtual {v1, v6, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v1, :cond_4

    move-object p1, v1

    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColorByKey(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextGravity(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTopPadding(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->topPadding:I

    return-void
.end method

.method public updateRTL()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->isRTL:Z

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->isRTL:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    :cond_2
    or-int/lit8 v1, v2, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
