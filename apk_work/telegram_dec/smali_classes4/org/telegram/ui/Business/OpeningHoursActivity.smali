.class public Lorg/telegram/ui/Business/OpeningHoursActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Business/OpeningHoursActivity$Period;
    }
.end annotation


# instance fields
.field public currentTimezoneId:Ljava/lang/String;

.field public currentValue:[Ljava/util/ArrayList;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field public enabled:Z

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field public timezoneId:Ljava/lang/String;

.field public value:[Ljava/util/ArrayList;

.field private valueSet:Z


# direct methods
.method public static synthetic $r8$lambda$3isW3ifjsjw1qx1oPEfKAkqa4Yo(Lorg/telegram/ui/Business/OpeningHoursActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->lambda$processDone$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DKvkrkRMvKu01L81LV72ndVIG9s(Lorg/telegram/ui/Business/OpeningHoursActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/OpeningHoursActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLuwiBV7Nwzy7aoFu9-A7bfKPN4(Lorg/telegram/ui/Business/OpeningHoursActivity;Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->lambda$onClick$5(Lorg/telegram/ui/Components/UItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ra-jLrQn80CHNvZkSsV72oNMisg(Lorg/telegram/ui/Business/OpeningHoursActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->lambda$processDone$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uo6wEIr8dl4IEk6Jt2mDTkjCQkM(Lorg/telegram/ui/Business/OpeningHoursActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e8LPlc3wp-Ocbipb8BSgQa5RZ4c(Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->lambda$adaptWeeklyOpen$0(Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f3Q3a1G9bipddOoqNCkaJIiNeY0(Lorg/telegram/ui/Business/OpeningHoursActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->lambda$onClick$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$vLsdgdtD8U6Yn7KfGlYyOsn1s24(Lorg/telegram/ui/Business/OpeningHoursActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->lambda$onClick$3(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/util/ArrayList;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    iput-object v7, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Business/OpeningHoursActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->processDone()V

    return-void
.end method

.method private adaptPrevDay(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x6

    rem-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    :goto_1
    if-eqz v1, :cond_5

    iget v0, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    const/16 v3, 0x59f

    if-le v0, v3, :cond_5

    iput v3, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    iget v0, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findViewByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getPeriodsValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static adaptWeeklyOpen(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;-><init>()V

    if-eqz p1, :cond_1

    iget v5, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    rem-int/lit16 v6, v5, 0x5a0

    iget v7, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    sub-int v8, v7, v5

    add-int/2addr v8, v6

    if-nez v6, :cond_1

    const/16 v6, 0x5a0

    if-eq v8, v6, :cond_0

    const/16 v6, 0x59f

    if-ne v8, v6, :cond_1

    :cond_0
    iput v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    iput v7, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    iget v5, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    add-int/2addr v5, p1

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    iget v5, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    add-int/2addr v5, p1

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    const/16 v6, 0x275f

    const/16 v7, 0x2760

    iget v8, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    if-gez v5, :cond_3

    if-gez v8, :cond_2

    add-int/lit16 v5, v5, 0x2760

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    add-int/lit16 v8, v8, 0x2760

    :goto_2
    iput v8, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    goto :goto_3

    :cond_2
    iput v1, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;-><init>()V

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    add-int/2addr v3, v7

    add-int/2addr v3, p1

    iput v3, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    iput v6, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    goto :goto_1

    :cond_3
    if-le v8, v7, :cond_5

    if-le v5, v7, :cond_4

    add-int/lit16 v5, v5, -0x2760

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    add-int/lit16 v8, v8, -0x2760

    goto :goto_2

    :cond_4
    iput v6, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;-><init>()V

    iput v1, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v6

    iput v3, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method private checkDone(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->hasChanges()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    sget p2, Lorg/telegram/messenger/R$string;->BusinessHoursInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->biz_clock:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BusinessHoursShow:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0x64

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->BusinessHours:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    :cond_0
    invoke-static {}, Lj$/time/DayOfWeek;->values()[Lj$/time/DayOfWeek;

    move-result-object v2

    aget-object v2, v2, v1

    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lj$/time/DayOfWeek;->getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getPeriodsValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asButtonCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, -0x65

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/R$string;->BusinessHoursTimezone:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lorg/telegram/ui/Business/TimezonesController;->getTimezoneName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x2

    invoke-static {v2, v1, p2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0x66

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static fromDaysHours([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    new-instance v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;-><init>()V

    mul-int/lit16 v6, v2, 0x5a0

    iget v7, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    add-int/2addr v7, v6

    iput v7, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    iget v4, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    add-int/2addr v6, v4

    iput v6, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getDaysHours(Ljava/util/ArrayList;)[Ljava/util/ArrayList;
    .locals 12

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    div-int/lit16 v6, v5, 0x5a0

    rem-int/2addr v6, v0

    rem-int/lit16 v7, v5, 0x5a0

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v7

    aget-object v5, v1, v6

    new-instance v6, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {v6, v7, v4}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_8

    mul-int/lit16 v4, v3, 0x5a0

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v6, v5, 0x5a0

    move v8, v4

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    iget v10, v9, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    if-gt v10, v8, :cond_2

    iget v9, v9, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    if-lt v9, v8, :cond_2

    add-int/lit8 v8, v9, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/16 v7, 0x59f

    const/16 v9, 0x5a0

    if-lt v8, v6, :cond_6

    add-int/lit8 v6, v3, 0x6

    rem-int/2addr v6, v0

    aget-object v10, v1, v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v1, v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v10, v10, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    if-lt v10, v9, :cond_4

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iput v7, v6, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    :cond_4
    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    const/16 v4, 0xb3f

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v6, v3, 0x8

    rem-int/2addr v6, v0

    aget-object v6, v1, v6

    if-lt v4, v9, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v8, v8, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    add-int/lit16 v9, v4, -0x5a0

    if-ge v8, v9, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v4, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    add-int/2addr v4, v7

    :cond_5
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    aget-object v3, v1, v3

    new-instance v6, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {v6, v2, v4}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    rem-int/lit8 v4, v5, 0x7

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    aget-object v4, v1, v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v6, v3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    if-le v6, v9, :cond_7

    add-int/lit16 v6, v6, -0x59f

    iget v8, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-ne v6, v8, :cond_7

    iput v7, v3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    iput v2, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    :cond_7
    :goto_4
    move v3, v5

    goto/16 :goto_2

    :cond_8
    return-object v1
.end method

.method private getPeriodsValue(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->BusinessHoursDayClosed:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->isFull(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->BusinessHoursDayFullOpened:I

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    if-lez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    invoke-static {v0}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    invoke-static {v0}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static is24x7(Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    add-int/lit8 v2, v2, 0x1

    if-le v4, v2, :cond_1

    return v0

    :cond_1
    iget v2, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x275f

    if-lt v2, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public static isFull(Ljava/util/ArrayList;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v4, v3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-ge v2, v4, :cond_1

    return v0

    :cond_1
    iget v2, v3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x59f

    if-eq v2, p0, :cond_3

    const/16 p0, 0x5a0

    if-ne v2, p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    return v0
.end method

.method private static synthetic lambda$adaptWeeklyOpen$0(Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;)I
    .locals 0

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$onClick$3(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object v0

    iput-object p2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Business/TimezonesController;->getTimezoneName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$5(Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->adaptPrevDay(I)V

    return-void
.end method

.method private synthetic lambda$processDone$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$processDone$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private maxPeriodsFor(I)I
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 p1, v0, 0x1c

    return p1
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 9

    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p5, -0x1

    const/4 v0, 0x1

    if-ne p3, p5, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->checkDone(Z)V

    goto/16 :goto_6

    :cond_0
    const/4 p5, -0x2

    if-ne p3, p5, :cond_1

    new-instance p1, Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-direct {p1}, Lorg/telegram/ui/Business/TimezoneSelector;-><init>()V

    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Business/TimezoneSelector;->setValue(Ljava/lang/String;)Lorg/telegram/ui/Business/TimezoneSelector;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Business/TimezoneSelector;->whenSelected(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Business/TimezoneSelector;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_6

    :cond_1
    iget p5, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x5

    if-ne p5, v1, :cond_9

    if-ltz p3, :cond_9

    iget-object p5, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    array-length p5, p5

    if-ge p3, p5, :cond_9

    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p5, 0x59f

    const/high16 v1, 0x42980000    # 76.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    cmpg-float p3, p4, p3

    if-gtz p3, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-ltz p3, :cond_4

    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    iget p4, p1, Lorg/telegram/ui/Components/UItem;->id:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    iget p4, p1, Lorg/telegram/ui/Components/UItem;->id:I

    aget-object p3, p3, p4

    new-instance p4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    invoke-direct {p4, v2, p5}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Business/OpeningHoursActivity;->adaptPrevDay(I)V

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    iget p4, p1, Lorg/telegram/ui/Components/UItem;->id:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    :goto_3
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    aget-object p1, p3, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getPeriodsValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setValue(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    add-int/lit8 p2, p2, 0x6

    rem-int/lit8 p2, p2, 0x7

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v1, v1, p2

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v1, v1, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    if-le v1, p4, :cond_5

    iget-object p4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object p4, p4, p2

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget p4, p4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_6
    add-int/lit16 p4, p4, -0x59f

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    add-int/2addr p2, v0

    rem-int/lit8 p2, p2, 0x7

    const/16 p3, 0x5a0

    :goto_5
    iget-object p4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v2, p4, :cond_8

    iget-object p4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object p4, p4, p2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget p4, p4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-ge p4, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object p3, p3, p2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget p3, p3, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit16 v7, p3, 0x59f

    new-instance p2, Lorg/telegram/ui/Business/OpeningHoursDayActivity;

    iget-object v4, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    iget p4, p1, Lorg/telegram/ui/Components/UItem;->id:I

    aget-object v5, p3, p4

    invoke-direct {p0, p4}, Lorg/telegram/ui/Business/OpeningHoursActivity;->maxPeriodsFor(I)I

    move-result v8

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;-><init>(Ljava/lang/CharSequence;Ljava/util/ArrayList;III)V

    new-instance p3, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->onApplied(Ljava/lang/Runnable;)Lorg/telegram/ui/Business/OpeningHoursDayActivity;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Business/OpeningHoursDayActivity;->onDone(Ljava/lang/Runnable;)Lorg/telegram/ui/Business/OpeningHoursDayActivity;

    move-result-object p1

    goto/16 :goto_1

    :cond_9
    :goto_6
    return-void
.end method

.method private processDone()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessWorkHours;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessWorkHours;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->fromDaysHours([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->timezone_id:Ljava/lang/String;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessWorkHours;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessWorkHours;->flags:I

    iput-object v3, v1, Lorg/telegram/tgnet/tl/TL_account$updateBusinessWorkHours;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    if-eqz v0, :cond_3

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    return-void
.end method

.method private setValue()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->valueSet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    if-eqz v4, :cond_3

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->timezone_id:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentTimezoneId:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getDaysHours(Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getDaysHours(Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Business/TimezonesController;->getSystemTimezoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentTimezoneId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    array-length v4, v2

    if-ge v0, v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v0

    if-ltz v0, :cond_4

    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    new-instance v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    const/16 v5, 0x59f

    invoke-direct {v4, v3, v5}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_6
    invoke-direct {p0, v3}, Lorg/telegram/ui/Business/OpeningHoursActivity;->checkDone(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->valueSet:Z

    return-void
.end method

.method public static toString(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getDaysHours(Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    if-eqz p1, :cond_1

    sget v5, Lorg/telegram/messenger/R$string;->BusinessHoursCopyHeader:I

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p1, 0x0

    :goto_0
    array-length v5, v2

    if-ge p1, v5, :cond_6

    aget-object v5, v2, p1

    invoke-static {}, Lj$/time/DayOfWeek;->values()[Lj$/time/DayOfWeek;

    move-result-object v6

    aget-object v6, v6, p1

    sget-object v7, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lj$/time/DayOfWeek;->getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/ui/Business/OpeningHoursActivity;->isFull(Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v5, Lorg/telegram/messenger/R$string;->BusinessHoursProfileOpen:I

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    sget v5, Lorg/telegram/messenger/R$string;->BusinessHoursProfileClose:I

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    if-lez v6, :cond_4

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v8, v7, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    invoke-static {v8}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    invoke-static {v7}, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->timeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    goto/16 :goto_0

    :cond_6
    invoke-static {p0}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->timezone_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Business/TimezonesController;->findTimezone(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_timezone;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    if-nez p1, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_timezone;->utc_offset:I

    :goto_4
    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x3c

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->BusinessHoursCopyFooter:I

    invoke-static {p0}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Business/TimezonesController;->getTimezoneName(Lorg/telegram/tgnet/TLRPC$TL_timezone;Z)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->BusinessHours:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Business/OpeningHoursActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/OpeningHoursActivity$1;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v4, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->checkDone(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;)V

    new-instance v2, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/OpeningHoursActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/OpeningHoursActivity;)V

    const/4 v3, 0x0

    invoke-direct {p1, p0, v1, v2, v3}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->setValue()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->setValue()V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->timezonesUpdated:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Business/TimezonesController;->getSystemTimezoneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hasChanges()Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentTimezoneId:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    array-length v4, v3

    if-ge v0, v4, :cond_8

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->currentValue:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget-object v5, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->value:[Ljava/util/ArrayList;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;

    iget v6, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    iget v7, v5, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->start:I

    if-ne v6, v7, :cond_6

    iget v4, v4, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    iget v5, v5, Lorg/telegram/ui/Business/OpeningHoursActivity$Period;->end:I

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Business/TimezonesController;->load()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Business/TimezonesController;->getSystemTimezoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/OpeningHoursActivity;->timezoneId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-direct {p0}, Lorg/telegram/ui/Business/OpeningHoursActivity;->processDone()V

    return-void
.end method
