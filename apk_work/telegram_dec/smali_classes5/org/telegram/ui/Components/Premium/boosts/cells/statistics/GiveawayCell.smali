.class public Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;
.super Lorg/telegram/ui/Cells/UserCell;
.source "SourceFile"


# instance fields
.field private counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

.field private prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    return-void
.end method


# virtual methods
.method public getPrepaidGiveaway()Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

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

.method public setImage(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    const-wide/16 v2, 0x1f4

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->months:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, -0x7aa0

    const v2, -0x2aadba

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v1, -0xa35106

    const v2, -0xbe7430

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const v1, -0x652e9c

    const v2, -0xb645bc

    goto :goto_1

    :goto_2
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v0

    mul-int p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->counterDrawable:Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/CounterDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method
