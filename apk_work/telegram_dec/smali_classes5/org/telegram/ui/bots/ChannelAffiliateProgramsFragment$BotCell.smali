.class public Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell$Factory;
    }
.end annotation


# instance fields
.field private final arrowView:Landroid/widget/ImageView;

.field private final currentAccount:I

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final linkBgView:Landroid/view/View;

.field private final linkFg2View:Landroid/view/View;

.field private final linkFgView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final textView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x0

    const/16 v1, 0x2e

    const/high16 v2, 0x42380000    # 46.0f

    const/16 v3, 0x13

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkBgView:Landroid/view/View;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    const/16 v1, 0x16

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFg2View:Landroid/view/View;

    const v0, 0x411aa3d7    # 9.665f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x419aa3d7    # 19.33f

    const v2, 0x419aa3d7    # 19.33f

    const v4, 0x422551ec    # 41.33f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFgView:Landroid/widget/ImageView;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->textLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x37

    const/high16 v4, 0x42840000    # 66.0f

    const v5, 0x410a8f5c    # 8.66f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x37

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x18

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x37

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->arrowView:Landroid/widget/ImageView;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;ZZ)V
    .locals 6

    .line 0
    iget v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->commission_permille:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const-string v1, " d"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v1, v4}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(F)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    iget v4, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->commission_permille:I

    invoke-static {v4}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->duration_months:I

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->Lifetime:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_1
    const/16 v4, 0xc

    if-lt v1, v4, :cond_3

    rem-int/lit8 v5, v1, 0xc

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    div-int/2addr v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Years"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Months"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->arrowView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const/16 p2, 0x8

    :goto_3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkBgView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFgView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFg2View:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFg2View:Landroid/view/View;

    const v0, 0x411aa3d7    # 9.665f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    goto :goto_4

    :cond_5
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFgView:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link_2:I

    goto :goto_5

    :cond_6
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFgView:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    const v1, 0x3f19999a    # 0.6f

    const v3, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_7

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_6

    :cond_7
    const v0, 0x3f19999a    # 0.6f

    :goto_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFgView:Landroid/widget/ImageView;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-eqz p1, :cond_8

    const v1, 0x3f4ccccd    # 0.8f

    :cond_8
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    iput-boolean p3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;ZZ)V
    .locals 5

    .line 0
    iget v0, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v2, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const-string v1, " d"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v1, v3}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(F)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    iget v3, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    invoke-static {v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->duration_months:I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->Lifetime:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_1
    const/16 v3, 0xc

    if-lt p1, v3, :cond_3

    rem-int/lit8 v4, p1, 0xc

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    div-int/2addr p1, v3

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Years"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Months"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->arrowView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkBgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->linkFg2View:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean p3, p0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method
