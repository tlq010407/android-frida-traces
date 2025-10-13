.class public Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;
.super Lorg/telegram/ui/Cells/UserCell;
.source "SourceFile"


# instance fields
.field private badgeLayout:Landroid/widget/FrameLayout;

.field private badgeTextView:Landroid/widget/TextView;

.field private boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

.field private counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

.field private giftDrawable:Landroid/graphics/drawable/Drawable;

.field private giveawayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->init()V

    return-void
.end method

.method private init()V
    .locals 11

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v6, v2, 0x30

    const/16 v2, 0x9

    if-eqz v1, :cond_1

    const/16 v4, 0x9

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    int-to-float v7, v4

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x9

    :goto_2
    int-to-float v9, v3

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setAvatarColorByMonths(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, -0x7aa0

    const v1, -0x2aadba

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v0, -0xa35106

    const v1, -0xbe7430

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v0, -0x652e9c

    const v1, -0xb645bc

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getBoost()Lorg/telegram/tgnet/tl/TL_stories$Boost;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x428c0000    # 70.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public setStatus(Lorg/telegram/tgnet/tl/TL_stories$Boost;)V
    .locals 12

    const/4 v0, 0x1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    iget v4, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x1e

    const v4, 0x15180

    div-int/2addr v1, v4

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    long-to-int v5, v4

    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "BoostingBoostStars"

    invoke-static {v8, v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v4, 0x1a

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    :cond_2
    iget-boolean v4, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/messenger/R$string;->BoostingUnclaimed:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v5, 0x12

    :goto_2
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->setAvatarColorByMonths(I)V

    goto :goto_1

    :cond_3
    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-nez v10, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/messenger/R$string;->BoostingToBeDistributed:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v5, 0x13

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterBoostExpired()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    iget v5, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v8, v5

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    cmp-long v8, v4, v6

    iget-object v4, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-lez v8, :cond_5

    sget v5, Lorg/telegram/messenger/R$string;->BoostingStarsExpires:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_5

    :cond_5
    sget v5, Lorg/telegram/messenger/R$string;->BoostingExpires:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->giftDrawable:Landroid/graphics/drawable/Drawable;

    const v6, -0x3171e1

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/R$drawable;->mini_gift:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->giftDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->giftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->BoostingGift:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v7, v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->giveawayDrawable:Landroid/graphics/drawable/Drawable;

    const v6, -0xcc6e2c

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/R$drawable;->mini_giveaway:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->giveawayDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->giveawayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v4, v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_6
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    if-lez p1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    move v1, p1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_c

    goto :goto_9

    :cond_c
    move v2, p1

    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_a
    return-void
.end method
