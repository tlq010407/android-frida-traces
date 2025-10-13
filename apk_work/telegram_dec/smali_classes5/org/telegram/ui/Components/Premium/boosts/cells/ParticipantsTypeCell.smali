.class public Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;
.source "SourceFile"


# static fields
.field public static TYPE_ALL:I = 0x0

.field public static TYPE_NEW:I = 0x1


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

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getSelectedType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->selectedType:I

    return v0
.end method

.method protected needCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setType(IZZLjava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->selectedType:I

    invoke-static {p5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p5

    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p5, :cond_0

    sget p5, Lorg/telegram/messenger/R$string;->BoostingAllSubscribers:I

    goto :goto_0

    :cond_0
    sget p5, Lorg/telegram/messenger/R$string;->BoostingAllMembers:I

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    :cond_1
    sget v3, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p5, :cond_2

    sget p5, Lorg/telegram/messenger/R$string;->BoostingNewSubscribers:I

    goto :goto_2

    :cond_2
    sget p5, Lorg/telegram/messenger/R$string;->BoostingNewMembers:I

    :goto_2
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->withArrow(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_4
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v0, :cond_7

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries1:I

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v4

    const-string p2, "BoostingFromAllCountries1"

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries2:I

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v4

    aput-object p3, p4, v2

    const-string p2, "BoostingFromAllCountries2"

    invoke-static {p2, p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->BoostingFromAllCountries3:I

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    new-array p5, v0, [Ljava/lang/Object;

    aput-object p2, p5, v4

    aput-object p3, p5, v2

    aput-object p4, p5, v1

    const-string p2, "BoostingFromAllCountries3"

    invoke-static {p2, p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, v4, [Ljava/lang/Object;

    const-string p3, "BoostingFromCountriesCount"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :goto_5
    return-void
.end method
