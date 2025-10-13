.class public Lorg/telegram/ui/AutoDeleteMessagesActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;
    }
.end annotation


# instance fields
.field afterOneDay:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

.field afterOneMonth:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

.field afterOneWeek:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

.field arrayList:Ljava/util/ArrayList;

.field checkBoxContainer:Landroid/widget/LinearLayout;

.field customTimeButton:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

.field offCell:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

.field public startFromTtl:I


# direct methods
.method public static synthetic $r8$lambda$3TA4oINobzzVm0IF7AwpD1XFii4(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->lambda$updateItems$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yebu48CeoMh-NozhGx1bP_4hpCc(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->lambda$updateItems$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHFMImCrx51TXzpC0eWB8V7bdI0(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/view/View;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->lambda$updateItems$1(Landroid/view/View;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AutoDeleteMessagesActivity;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->getSelectedTime()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/AutoDeleteMessagesActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->selectDate(IZ)V

    return-void
.end method

.method private getSelectedTime()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/RadioCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v0, v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    return v0
.end method

.method private static synthetic lambda$updateItems$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updateItems$1(Landroid/view/View;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->selectRadioButton(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$updateItems$2(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->customTimeButton:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity$3;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createAutoDeleteDatePickerDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v0, v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    invoke-direct {p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->getSelectedTime()I

    move-result v2

    if-nez v2, :cond_1

    if-lez v0, :cond_1

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->MessageLifetime:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteConfirmMessage:I

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const-string v0, "AutoDeleteConfirmMessage"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Enable:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/AutoDeleteMessagesActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/view/View;)V

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->selectRadioButton(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private selectDate(IZ)V
    .locals 8

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    new-instance v4, Landroid/transition/Fade;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v4, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    new-instance v6, Landroid/transition/Fade;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v2, v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->selectRadioButton(Landroid/view/View;Z)V

    return-void

    :cond_0
    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget-boolean v2, v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->custom:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v3, v3, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    if-ge p1, v3, :cond_4

    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v2, v5

    goto :goto_2

    :cond_5
    :goto_3
    new-instance v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/content/Context;)V

    iput-boolean v5, v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->custom:Z

    iput p1, v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteAfterShort:I

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string p1, "AutoDeleteAfterShort"

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1, v5}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->updateItems()V

    invoke-direct {p0, v2, p2}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->selectRadioButton(Landroid/view/View;Z)V

    return-void
.end method

.method private selectRadioButton(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget p1, p1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    if-lez p1, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->AutoDeleteGlobalTimerEnabled:I

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "AutoDeleteGlobalTimerEnabled"

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method private updateItems()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    new-instance v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity$1;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/telegram/ui/Components/StickerImageView;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v2, p1, v4}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    const/16 v4, 0x82

    const/16 v5, 0x11

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xaa

    const/4 v4, -0x1

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->MessageLifetime:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->offCell:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    sget v5, Lorg/telegram/messenger/R$string;->ShortMessageLifetimeForever:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->offCell:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iput v6, v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    iget-object v5, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneDay:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    sget v5, Lorg/telegram/messenger/R$string;->AutoDeleteAfter1Day:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6, v1}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneDay:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    const/16 v5, 0x5a0

    iput v5, v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    iget-object v5, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneWeek:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    sget v5, Lorg/telegram/messenger/R$string;->AutoDeleteAfter1Week:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6, v1}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneWeek:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    const/16 v5, 0x2760

    iput v5, v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    iget-object v5, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneMonth:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    sget v5, Lorg/telegram/messenger/R$string;->AutoDeleteAfter1Month:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6, v1}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneMonth:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    const v1, 0xae60

    iput v1, v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->customTimeButton:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    sget v1, Lorg/telegram/messenger/R$string;->SetCustomTime:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->customTimeButton:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/RadioCell;->hideRadioButton()V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->checkBoxContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->customTimeButton:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->offCell:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneDay:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneWeek:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->afterOneMonth:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->customTimeButton:Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->updateItems()V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->GlobalAutoDeleteInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity$2;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;)V

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/AutoDeleteMessagesActivity;->selectDate(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->loadGlobalTTl()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/RadioCell;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v2, v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    iget v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v2, v2, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    iput v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setDefaultHistoryTTL;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_setDefaultHistoryTTL;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;

    iget v1, v1, Lorg/telegram/ui/AutoDeleteMessagesActivity$RadioCellInternal;->time:I

    mul-int/lit8 v1, v1, 0x3c

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setDefaultHistoryTTL;->period:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/AutoDeleteMessagesActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/AutoDeleteMessagesActivity$4;-><init>(Lorg/telegram/ui/AutoDeleteMessagesActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/AutoDeleteMessagesActivity;->startFromTtl:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/UserConfig;->setGlobalTtl(I)V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
