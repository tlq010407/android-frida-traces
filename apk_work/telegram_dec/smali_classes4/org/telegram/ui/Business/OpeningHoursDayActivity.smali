.class public Lorg/telegram/ui/Business/OpeningHoursDayActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final max:I

.field private final maxPeriodsCount:I

.field private final min:I

.field private final periods:Ljava/util/ArrayList;

.field private final title:Ljava/lang/CharSequence;

.field private whenApplied:Ljava/lang/Runnable;

.field public whenDone:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$2vkZm-iYBWb3ShT8H9X1NoyqeGg(Lorg/telegram/ui/Business/OpeningHoursDayActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DEsnHyIGB7o51a7w_lO6mwxGwF4(Lorg/telegram/ui/Business/OpeningHoursDayActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$kH_2acJAhuUELxXmm35i4fbs6sU(Lorg/telegram/ui/Business/OpeningHoursDayActivity;Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->lambda$onClick$1(Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nint2kIcXCWryNyFSNWiD7Mwfds(Lorg/telegram/ui/Business/OpeningHoursDayActivity;Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->lambda$onClick$0(Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/ArrayList;III)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->min:I

    iput p4, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    iput p5, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->maxPeriodsCount:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 5

    sget p2, Lorg/telegram/messenger/R$string;->BusinessHoursDayOpen:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRippleCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->is24()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v0, 0x3

    sget v3, Lorg/telegram/messenger/R$string;->BusinessHoursDayOpenHour:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    invoke-static {v4}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    sget v4, Lorg/telegram/messenger/R$string;->BusinessHoursDayCloseHour:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v1, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    invoke-static {v1}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    sget v1, Lorg/telegram/messenger/R$string;->Remove:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->showAddButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_premium_clock_add:I

    sget v0, Lorg/telegram/messenger/R$string;->BusinessHoursDayAdd:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->BusinessHoursDayInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private is24()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v0, v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v0, v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    const/16 v3, 0x59f

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onClick$0(Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->showAddButton()Z

    move-result v0

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p2, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    invoke-static {p3}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->showAddButton()Z

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->showAddButton()Z

    move-result v0

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p2, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    invoke-static {p3}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->showAddButton()Z

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v4, -0x1

    const/16 v5, 0x59f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    xor-int/2addr v3, v7

    iput-boolean v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    iget-object v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-boolean v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {v4, v6, v5}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    iput-boolean v3, v1, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    iget-boolean v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    if-eqz v1, :cond_1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    if-eqz v1, :cond_10

    goto/16 :goto_8

    :cond_2
    const/4 v4, -0x2

    const/4 v8, 0x2

    if-ne v3, v4, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->is24()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v1, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    add-int/lit8 v2, v1, 0x1e

    iget v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    sub-int/2addr v3, v7

    iget v4, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->min:I

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v2

    add-int/lit16 v1, v1, 0x618

    div-int/2addr v1, v8

    iget v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {v4, v2, v1}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->is24()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    sub-int/2addr v1, v7

    iget v2, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->min:I

    const/16 v3, 0x1e0

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x4b0

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    goto :goto_1

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto/16 :goto_9

    :cond_7
    iget v4, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_10

    div-int/2addr v3, v9

    if-ltz v3, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_8

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v4, v3, -0x1

    const/4 v10, 0x0

    if-ltz v4, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    goto :goto_4

    :cond_9
    move-object v4, v10

    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    add-int/lit8 v12, v3, 0x1

    iget-object v13, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    :cond_a
    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    rem-int/2addr v1, v9

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v1, Lorg/telegram/messenger/R$string;->BusinessHoursDayOpenHourPicker:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v11, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-nez v4, :cond_b

    iget v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->min:I

    :goto_5
    move v15, v1

    goto :goto_6

    :cond_b
    iget v1, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    add-int/2addr v1, v7

    goto :goto_5

    :goto_6
    iget v1, v11, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    add-int/lit8 v16, v1, -0x1

    new-instance v1, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v2, v11}, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/OpeningHoursDayActivity;Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;)V

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createTimePickerDialog(Landroid/content/Context;Ljava/lang/String;IIILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_9

    :cond_c
    if-ne v1, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->BusinessHoursDayCloseHourPicker:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v11, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    iget v5, v11, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    add-int/2addr v5, v7

    if-nez v10, :cond_d

    iget v6, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    goto :goto_7

    :cond_d
    iget v6, v10, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    sub-int/2addr v6, v7

    :goto_7
    new-instance v7, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v2, v11}, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/OpeningHoursDayActivity;Landroid/view/View;Lorg/telegram/ui/Business/OpeningHoursActivity$Period;)V

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createTimePickerDialog(Landroid/content/Context;Ljava/lang/String;IIILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_9

    :cond_e
    if-ne v1, v8, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {v2, v6, v5}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    if-eqz v1, :cond_10

    :goto_8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    nop

    :cond_10
    :goto_9
    return-void
.end method

.method private showAddButton()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->maxPeriodsCount:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->is24()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v0, v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    iget v3, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->max:I

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x59e

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Business/OpeningHoursDayActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity$1;-><init>(Lorg/telegram/ui/Business/OpeningHoursDayActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/OpeningHoursDayActivity;)V

    new-instance v2, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/OpeningHoursDayActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/OpeningHoursDayActivity;)V

    const/4 v3, 0x0

    invoke-direct {p1, p0, v1, v2, v3}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onApplied(Ljava/lang/Runnable;)Lorg/telegram/ui/Business/OpeningHoursDayActivity;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    return-void
.end method

.method public onDone(Ljava/lang/Runnable;)Lorg/telegram/ui/Business/OpeningHoursDayActivity;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenDone:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget-boolean v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->enabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->periods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->whenApplied:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
