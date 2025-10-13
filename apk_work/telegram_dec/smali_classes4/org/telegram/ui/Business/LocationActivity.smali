.class public Lorg/telegram/ui/Business/LocationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private final BUTTON_CLEAR:I

.field private final BUTTON_MAP:I

.field final MAX_NAME_LENGTH:I

.field private address:Ljava/lang/String;

.field private clearVisible:Z

.field private currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private editTextContainer:Landroid/widget/FrameLayout;

.field private geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field private ignoreEditText:Z

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private mapAddress:Z

.field private mapLoadingDrawable:Lorg/telegram/ui/Components/ClipRoundedDrawable;

.field private mapMarker:Landroid/view/View;

.field private mapPreview:Lorg/telegram/ui/Components/BackupImageView;

.field private mapPreviewContainer:Landroid/widget/FrameLayout;

.field private shiftDp:I

.field private valueSet:Z


# direct methods
.method public static synthetic $r8$lambda$7z-d_vhlrazjnEWAXTmKI-pBHWs(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$showLocationAlert$9(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DT_1T4xl63HrCCHFRFLgj5r8kUk(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$onBackPressed$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBPLI90Q25iiFSw9is334_Vq9uQ(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Business/LocationActivity;->lambda$showLocationAlert$7(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Phvac0geaKVkYdRNhhSgwokjeVQ(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$processDone$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S1qTSIGGMaMutyUQ7eqCYU9N_lU(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$onClick$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJUy9BkbxGs5F9jbgzu1kPhr1_8(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Business/LocationActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$cuEa2vC1oPth0vyzLY9aQHBjjnI(Lorg/telegram/ui/Business/LocationActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3Vbi82gt3Wp5Z1EK786KAX7VrE(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$onBackPressed$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$loYz3qy0keCCrXpKcRKpFEqrLkU(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$onClick$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pkYFGp4Wc3rXvM5Vl7Xm9d4ykCE(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$processDone$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnWBqHR8jpOegJ4dVgAfSpGPJGQ(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$onClick$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOvADARnHxqc3BGHAGxznjsPGBM(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/LocationActivity;->lambda$showLocationAlert$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/LocationActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0x60

    iput v0, p0, Lorg/telegram/ui/Business/LocationActivity;->MAX_NAME_LENGTH:I

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Business/LocationActivity;->shiftDp:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Business/LocationActivity;->BUTTON_MAP:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Business/LocationActivity;->BUTTON_CLEAR:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Business/LocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->processDone()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Business/LocationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Business/LocationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapAddress:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Business/LocationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Business/LocationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/LocationActivity;->checkDone(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Business/LocationActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapMarker:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Business/LocationActivity;)Lorg/telegram/ui/Components/ClipRoundedDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapLoadingDrawable:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    return-object p0
.end method

.method private checkDone(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/LocationActivity;->hasChanges()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

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
    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Business/LocationActivity;->clearVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eq p1, v0, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_a
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    sget p2, Lorg/telegram/messenger/R$string;->BusinessLocationInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->biz_map:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->editTextContainer:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lorg/telegram/messenger/R$string;->BusinessLocationMap:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreviewContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/Business/LocationActivity;->clearVisible:Z

    if-eqz v3, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->BusinessLocationClear:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Business/LocationActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onClick$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onClick$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$processDone$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

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

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$processDone$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showLocationAlert$7(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/LocationActivity;->getAddressName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Business/LocationActivity;->mapAddress:Z

    if-eqz p2, :cond_3

    :cond_1
    iput-boolean p3, p0, Lorg/telegram/ui/Business/LocationActivity;->mapAddress:Z

    invoke-virtual {p1}, Lorg/telegram/ui/LocationActivity;->getAddressName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    iget-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->updateMapPreview()V

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, p3}, Lorg/telegram/ui/Business/LocationActivity;->checkDone(Z)V

    return-void
.end method

.method private synthetic lambda$showLocationAlert$8(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showLocationAlert$9(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LocationActivity;->setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/LocationActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 1

    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p2, p4, :cond_1

    iget-object p5, p1, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreviewContainer:Landroid/widget/FrameLayout;

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->BusinessLocationClearTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->BusinessLocationClearMessage:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Remove:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreviewContainer:Landroid/widget/FrameLayout;

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->showLocationAlert()V

    :cond_4
    :goto_2
    return-void
.end method

.method private processDone()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Business/LocationActivity;->hasChanges()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x60

    if-le v3, v4, :cond_5

    :cond_4
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v1, p0, Lorg/telegram/ui/Business/LocationActivity;->shiftDp:I

    neg-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Business/LocationActivity;->shiftDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CrossfadeDrawable;->animateToProgress(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;-><init>()V

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v0, :cond_6

    iget v0, v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;->flags:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v5, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    :cond_6
    iget v0, v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;->flags:I

    or-int/2addr v0, v2

    iput v0, v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessLocation;->address:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;-><init>()V

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    iget-object v5, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->address:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v5, :cond_8

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->flags:I

    or-int/2addr v2, v5

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->flags:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 v0, 0x0

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-virtual {v0, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    return-void
.end method

.method private setValue()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Business/LocationActivity;->valueSet:Z

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
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->business_location:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->address:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string v0, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->updateMapPreview()V

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Business/LocationActivity;->valueSet:Z

    return-void
.end method

.method private showLocationAlert()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/LocationActivity;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LocationActivity;->setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    :cond_0
    new-instance v1, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/LocationActivity;Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private updateMapPreview()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapMarker:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapMarker:Landroid/view/View;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    mul-int v9, v12, v0

    mul-int/lit16 v10, v12, 0xf0

    const-wide/16 v7, 0x0

    const/16 v11, 0xf

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(DDJIIII)Lorg/telegram/messenger/WebFile;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Business/LocationActivity;->mapLoadingDrawable:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->BusinessLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Business/LocationActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/LocationActivity$1;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

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

    iput-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/LocationActivity;->checkDone(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Lorg/telegram/ui/Business/LocationActivity$2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Business/LocationActivity$2;-><init>(Lorg/telegram/ui/Business/LocationActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v0, v0, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v6, 0x2c001

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/messenger/R$string;->BusinessLocationAddress:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x41980000    # 19.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Business/LocationActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Business/LocationActivity$3;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Business/LocationActivity$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Business/LocationActivity$4;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    new-array v7, v1, [Landroid/text/InputFilter;

    aput-object v6, v7, v0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v12, 0x41a80000    # 21.0f

    const/high16 v13, 0x41700000    # 15.0f

    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/16 v9, 0x30

    const/high16 v10, 0x41a80000    # 21.0f

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editTextContainer:Landroid/widget/FrameLayout;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    iget-object v7, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Business/LocationActivity;->ignoreEditText:Z

    :cond_1
    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Business/LocationActivity$5;-><init>(Lorg/telegram/ui/Business/LocationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    sget v0, Lorg/telegram/messenger/R$raw;->map_placeholder:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLocationIcon:I

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v3, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(IIF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColorKey(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setAspectCenter(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    new-instance v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ClipRoundedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapLoadingDrawable:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Business/LocationActivity$6;-><init>(Lorg/telegram/ui/Business/LocationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapMarker:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreviewContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreview:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->mapPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->mapMarker:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/high16 v10, -0x3e080000    # -31.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->updateMapPreview()V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    new-instance v4, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-direct {p1, p0, v0, v4, v5}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object p1, p0, Lorg/telegram/ui/Business/LocationActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->setValue()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Business/LocationActivity;->setValue()V

    :cond_0
    return-void
.end method

.method public hasChanges()Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Business/LocationActivity;->currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_geoPointEmpty;

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eq v0, v4, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->address:Ljava/lang/String;

    goto :goto_6

    :cond_8
    const-string v3, ""

    :goto_6
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Business/LocationActivity;->currentLocation:Lorg/telegram/tgnet/TLRPC$TL_businessLocation;

    if-eqz v4, :cond_b

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-eq v3, v5, :cond_c

    return v2

    :cond_c
    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_businessLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz v3, :cond_d

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_geoPointEmpty;

    if-nez v4, :cond_e

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    cmpl-double v8, v4, v6

    if-nez v8, :cond_d

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_e

    :cond_d
    return v2

    :cond_e
    return v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Business/LocationActivity;->hasChanges()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBackPressed()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/LocationActivity;->hasChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UnsavedChanges:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->BusinessLocationUnsavedChanges:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/LocationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/LocationActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

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

    return-void
.end method
