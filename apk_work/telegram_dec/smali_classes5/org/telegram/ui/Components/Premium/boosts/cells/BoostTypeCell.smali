.class public Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;
.source "SourceFile"


# static fields
.field public static TYPE_GIVEAWAY:I = 0x0

.field public static TYPE_PREMIUM:I = 0x2

.field public static TYPE_SPECIFIC_USERS:I = 0x1

.field public static TYPE_STARS:I = 0x3


# instance fields
.field private selectedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public getSelectedType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->selectedType:I

    return v0
.end method

.method protected needCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setType(IILorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->selectedType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->selectedType:I

    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->BoostingCreateGiveaway:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    sget p1, Lorg/telegram/messenger/R$string;->BoostingWinnersRandomly:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const p2, -0xe95a0e

    const p3, -0xee7f09

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_2
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    :cond_1
    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    const v4, -0x69a306

    const v5, -0x3b970e

    const-string v6, "Recipient"

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingAwardSpecificUsers:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    if-lez p2, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->BoostingSelectRecipients:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v5, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    :goto_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    goto :goto_2

    :cond_4
    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingPremium:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_5
    if-lez p2, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->BoostingWinnersRandomly:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v5, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    goto/16 :goto_1

    :cond_7
    sget p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->BoostingStars:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    sget p1, Lorg/telegram/messenger/R$string;->BoostingWinnersRandomly:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const p2, -0x23de5

    const p3, -0x98bb9

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    goto/16 :goto_5

    :cond_8
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {p1, p4, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    return-void
.end method

.method protected updateLayouts()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    or-int/lit8 v7, v2, 0x10

    const/high16 v10, 0x42640000    # 57.0f

    const/4 v11, 0x0

    const/16 v5, 0x28

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v8, 0x42640000    # 57.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    or-int/lit8 v8, v5, 0x10

    const/high16 v5, 0x42da0000    # 109.0f

    const/high16 v13, 0x41a00000    # 20.0f

    if-eqz v2, :cond_2

    const/high16 v9, 0x41a00000    # 20.0f

    goto :goto_2

    :cond_2
    const/high16 v9, 0x42da0000    # 109.0f

    :goto_2
    if-eqz v2, :cond_3

    const/high16 v11, 0x42da0000    # 109.0f

    goto :goto_3

    :cond_3
    const/high16 v11, 0x41a00000    # 20.0f

    :goto_3
    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v6, 0x5

    goto :goto_4

    :cond_4
    const/4 v6, 0x3

    :goto_4
    or-int/lit8 v16, v6, 0x10

    if-eqz v2, :cond_5

    const/high16 v17, 0x41a00000    # 20.0f

    goto :goto_5

    :cond_5
    const/high16 v17, 0x42da0000    # 109.0f

    :goto_5
    if-eqz v2, :cond_6

    const/high16 v19, 0x42da0000    # 109.0f

    goto :goto_6

    :cond_6
    const/high16 v19, 0x41a00000    # 20.0f

    :goto_6
    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v3, 0x5

    :cond_7
    or-int/lit8 v6, v3, 0x10

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v10, 0x0

    const/16 v4, 0x16

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
