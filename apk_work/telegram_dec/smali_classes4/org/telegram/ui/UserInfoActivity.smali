.class public Lorg/telegram/ui/UserInfoActivity;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;,
        Lorg/telegram/ui/UserInfoActivity$ChooseChannelFragment;
    }
.end annotation


# instance fields
.field private bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field private bioInfo:Ljava/lang/CharSequence;

.field private birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field private birthdayInfo:Ljava/lang/CharSequence;

.field private channel:Lorg/telegram/tgnet/TLRPC$Chat;

.field private channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

.field private currentBio:Ljava/lang/String;

.field private currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field private currentChannel:J

.field private currentFirstName:Ljava/lang/String;

.field private currentLastName:Ljava/lang/String;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field private hadHours:Z

.field private hadLocation:Z

.field private lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

.field private shiftDp:I

.field private valueSet:Z

.field private wasSaved:Z


# direct methods
.method public static synthetic $r8$lambda$1fBfvTyRBTSnLs0EYYsbvJTORKY(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$onResume$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCGJwAsbKUrI-b98YZsKS4lh5Y8(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->lambda$onClick$2(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0xX8mZevrcL9jonUHF78jUzrGk(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/UserInfoActivity;->lambda$processDone$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_id11TP5yhPUhZA1X3qrYvN1bMg(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/UserInfoActivity;->lambda$processDone$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cxjW3ITWr_QUZXnbK8tpy45yTk4(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$createView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hU_0XcqhZJLG35wcI2H_UeTXAhQ(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->lambda$fillItems$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$jsdszMBuvNcUcVzWPAHlTMHpxKg(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->lambda$onClick$3(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;-><init>(IZ)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity;->wasSaved:Z

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/UserInfoActivity;->shiftDp:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/UserInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/UserInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->processDone(Z)V

    return-void
.end method

.method public static birthdayString(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "\u2014"

    return-object p0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v4, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    iget v4, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterBoostExpired()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v4, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p0

    goto :goto_0
.end method

.method public static birthdaysEqual(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_3

    if-eqz p0, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    iget v3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->day:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    iget v3, p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->month:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;->year:I

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private checkDone(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/UserInfoActivity;->hasChanges()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

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
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$0()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$1()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onClick$2(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$3(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileChannelSet:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processDone$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p5, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;

    if-eqz p2, :cond_0

    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string p6, "FLOOD_WAIT_"

    invoke-virtual {p5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p5

    iget-object p6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p5, p6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p5, Lorg/telegram/messenger/R$string;->PrivacyBirthdayTooOftenTitle:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p5, Lorg/telegram/messenger/R$string;->PrivacyBirthdayTooOftenMessage:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p5, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    invoke-virtual {p1, p5, p6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    iget p1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    if-eqz p3, :cond_2

    or-int/lit8 p1, p1, 0x20

    :goto_1
    iput p1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    goto :goto_2

    :cond_2
    and-int/lit8 p1, p1, -0x21

    goto :goto_1

    :goto_2
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p4, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    goto :goto_3

    :cond_3
    instance-of p1, p5, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/UserInfoActivity;->wasSaved:Z

    aget p2, p6, v1

    add-int/2addr p2, p1

    aput p2, p6, v1

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$processDone$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda6;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processDone(Z)V
    .locals 16

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v0, v7, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-object v0, v7, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget v1, v7, Lorg/telegram/ui/UserInfoActivity;->shiftDp:I

    neg-int v1, v1

    iput v1, v7, Lorg/telegram/ui/UserInfoActivity;->shiftDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v10

    if-eqz v0, :cond_e

    if-nez v10, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->currentFirstName:Ljava/lang/String;

    iget-object v2, v7, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->currentLastName:Ljava/lang/String;

    iget-object v2, v7, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->currentBio:Ljava/lang/String;

    iget-object v2, v7, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$updateProfile;-><init>()V

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    or-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    iget-object v2, v7, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->first_name:Ljava/lang/String;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    iget-object v2, v7, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->last_name:Ljava/lang/String;

    iget v0, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->flags:I

    iget-object v0, v7, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_account$updateProfile;->about:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_4
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object v0, v7, Lorg/telegram/ui/UserInfoActivity;->currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {v0, v1}, Lorg/telegram/ui/UserInfoActivity;->birthdaysEqual(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;-><init>()V

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-eqz v1, :cond_6

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    iput-object v1, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->flags:I

    or-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    goto :goto_1

    :cond_6
    iget v1, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 v1, 0x0

    iput-object v1, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    :goto_1
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->invalidateContentSettings()V

    iget v0, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    iget-wide v0, v7, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    iget-object v2, v7, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_8

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_2

    :cond_8
    move-wide v5, v3

    :goto_2
    cmp-long v2, v0, v5

    if-eqz v2, :cond_b

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updatePersonalChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updatePersonalChannel;-><init>()V

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePersonalChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v1, v7, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_a

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    iget-wide v2, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    iput v8, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    :cond_9
    iput-wide v4, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    goto :goto_3

    :cond_a
    iget v1, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    iput v8, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    iput-wide v3, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    :goto_3
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_c
    filled-new-array {v8}, [I

    move-result-object v13

    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_d

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/tgnet/TLObject;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v5, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v12

    move-object v4, v10

    move-object v8, v5

    move-object v5, v13

    move-object v9, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/UserInfoActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$UserFull;[ILjava/util/ArrayList;)V

    const/16 v0, 0x400

    invoke-virtual {v9, v15, v8, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    const/4 v0, 0x1

    add-int/2addr v14, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    iget v1, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v1, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_e
    :goto_5
    return-void
.end method

.method private setValue()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity;->valueSet:Z

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
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/UserInfoActivity;->currentFirstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentLastName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->currentBio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    iput-wide v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_work_hours:Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/UserInfoActivity;->hadHours:Z

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    invoke-direct {p0, v1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/UserInfoActivity;->valueSet:Z

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    new-instance v8, Lorg/telegram/ui/UserInfoActivity$1;

    sget v0, Lorg/telegram/messenger/R$string;->EditProfileFirstName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/UserInfoActivity$1;-><init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setDivider(Z)V

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$2;

    sget v3, Lorg/telegram/messenger/R$string;->EditProfileLastName:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/UserInfoActivity$2;-><init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/EditTextCell;->hideKeyboardOnEnter()V

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$3;

    sget v3, Lorg/telegram/messenger/R$string;->EditProfileBioHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getAboutLimit()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/UserInfoActivity$3;-><init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitWhenEmpty(Z)V

    sget v0, Lorg/telegram/messenger/R$string;->EditProfileBioInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->bioInfo:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/UserInfoActivity$4;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v3, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v0, p1, v3}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->setValue()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/UserInfoActivity;->setValue()V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 5

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileChannel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileChannelTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileChannelAdd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x3

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileBio:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->bioInfo:Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileBirthday:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileBirthdayText:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-nez v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayAdd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/UserInfoActivity;->birthdayString(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileBirthdayRemove:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayInfoContacts:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    if-eqz v4, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->EditProfileBirthdayInfoContacts:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-nez v4, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v4, :cond_5

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    new-instance p2, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-static {v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    if-eqz p2, :cond_8

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_premium_clock:I

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileHours:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    if-eqz p2, :cond_9

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_map:I

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity;->hadLocation:Z

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/UserInfoActivity;->hadHours:Z

    if-eqz p2, :cond_b

    :cond_a
    const/4 p2, -0x3

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->EditProfileInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChanges()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentFirstName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->firstNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentLastName:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->lastNameEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentBio:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->bioEdit:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentBirthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object v1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {v0, v1}, Lorg/telegram/ui/UserInfoActivity;->birthdaysEqual(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lorg/telegram/ui/UserInfoActivity;->currentChannel:J

    iget-object v2, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget p1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayButton:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    new-instance v4, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createBirthdayPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_2

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/UserInfoActivity;->checkDone(Z)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    new-instance p1, Lorg/telegram/ui/UserInfoActivity$ChooseChannelFragment;

    iget-object p2, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    iget-object p3, p0, Lorg/telegram/ui/UserInfoActivity;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p3, :cond_3

    const-wide/16 p3, 0x0

    goto :goto_0

    :cond_3
    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_0
    new-instance p5, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/telegram/ui/UserInfoActivity$ChooseChannelFragment;-><init>(Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;JLorg/telegram/messenger/Utilities$Callback;)V

    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :cond_4
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    new-instance p1, Lorg/telegram/ui/Business/LocationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Business/LocationActivity;-><init>()V

    goto :goto_1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    new-instance p1, Lorg/telegram/ui/Business/OpeningHoursActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;-><init>()V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

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

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget-boolean v0, p0, Lorg/telegram/ui/UserInfoActivity;->wasSaved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/UserInfoActivity;->processDone(Z)V

    :cond_0
    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    invoke-virtual {v0}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    new-instance v1, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/UserInfoActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->subscribe(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->channels:Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;

    invoke-virtual {v0}, Lorg/telegram/ui/UserInfoActivity$AdminedChannelsFetcher;->fetch()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/UserInfoActivity;->birthdayInfo:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method
