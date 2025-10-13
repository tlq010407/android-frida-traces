.class public Lorg/telegram/ui/Business/QuickRepliesEmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Business/QuickRepliesEmptyView$DotTextView;
    }
.end annotation


# instance fields
.field private descriptionView:Landroid/widget/TextView;

.field private descriptionView2:Landroid/widget/TextView;

.field public imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 p3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p8, Landroid/widget/TextView;

    invoke-direct {p8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p8, p4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p8, v0}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p8, Lorg/telegram/ui/Business/QuickRepliesEmptyView$DotTextView;

    invoke-direct {p8, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesEmptyView$DotTextView;-><init>(Lorg/telegram/ui/Business/QuickRepliesEmptyView;Landroid/content/Context;)V

    iput-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p8, v0}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p8, p4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p8, p4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p8, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p8, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p8, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p8, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const-string p8, "hello"

    invoke-virtual {p8, p7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p8

    const/16 v2, 0x16

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->large_greeting:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BusinessGreetingIntroTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BusinessGreetingIntro:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    invoke-static {p3, p4}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/16 p6, 0x16

    goto/16 :goto_2

    :cond_0
    const-string p8, "away"

    invoke-virtual {p8, p7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->large_away:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BusinessAwayIntroTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BusinessAwayIntro:I

    goto :goto_0

    :cond_1
    const/4 p8, 0x5

    if-ne p2, p8, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget p8, Lorg/telegram/messenger/R$drawable;->large_quickreplies:I

    invoke-virtual {p2, p8}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object p2

    invoke-virtual {p2, p5, p6}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p7, p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    sget p5, Lorg/telegram/messenger/R$string;->BusinessRepliesIntroTitle:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    const/high16 p5, 0x43500000    # 208.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    const/4 p6, 0x2

    invoke-virtual {p2, p6}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    const/4 p8, 0x3

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BusinessRepliesIntro1:I

    new-array v2, p4, [Ljava/lang/Object;

    aput-object p7, v2, p3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p7

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    const/high16 p7, 0x41e00000    # 28.0f

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesEmptyView$DotTextView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesEmptyView$DotTextView;-><init>(Lorg/telegram/ui/Business/QuickRepliesEmptyView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    invoke-virtual {p1, p8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    invoke-virtual {p1, p4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->BusinessRepliesIntro2:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    const/16 v2, 0xc

    const/16 p6, 0xc

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v5, 0x14

    const/16 v6, 0x9

    const/16 v0, 0x4e

    const/16 v1, 0x4e

    const/16 v2, 0x31

    const/16 v3, 0x14

    const/16 v4, 0x11

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p8, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const/16 p1, 0x9

    const/16 p7, 0x9

    goto :goto_3

    :cond_4
    const/16 p1, 0x13

    const/16 p7, 0x13

    :goto_3
    const/4 p1, -0x2

    const/4 p2, -0x2

    const/16 p3, 0x31

    const/4 p5, 0x0

    move p4, p6

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/16 p7, 0xc

    const/16 p8, 0x13

    const/4 p2, -0x2

    const/4 p3, -0x2

    const/16 p4, 0x31

    const/16 p5, 0xc

    const/4 p6, 0x0

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->updateColors()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->descriptionView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/QuickRepliesEmptyView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
