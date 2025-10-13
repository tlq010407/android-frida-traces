.class public Lorg/telegram/ui/UnlockPremiumView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    if-nez p2, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->UnlockPremiumStickersDescription:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->UnlockPremiumReactionsDescription:I

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v9, 0x11

    const/16 v10, 0x10

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x11

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/UnlockPremiumView;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-nez p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->UnlockPremiumStickers:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->UnlockPremiumReactions:I

    goto :goto_2

    :goto_3
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v4, "d "

    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_premium_normal:I

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5, v3, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, v2, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
