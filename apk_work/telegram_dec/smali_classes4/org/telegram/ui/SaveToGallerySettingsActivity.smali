.class public Lorg/telegram/ui/SaveToGallerySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;,
        Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;,
        Lorg/telegram/ui/SaveToGallerySettingsActivity$SelectableAnimatedTextView;
    }
.end annotation


# instance fields
.field private final VIEW_TYPE_ADD_EXCEPTION:I

.field private final VIEW_TYPE_CHAT:I

.field private final VIEW_TYPE_CHOOSER:I

.field private final VIEW_TYPE_DELETE_ALL:I

.field private final VIEW_TYPE_DIVIDER:I

.field private final VIEW_TYPE_DIVIDER_INFO:I

.field private final VIEW_TYPE_DIVIDER_LAST:I

.field private final VIEW_TYPE_HEADER:I

.field private final VIEW_TYPE_TOGGLE:I

.field adapter:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

.field dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

.field dialogId:J

.field exceptionsDialogs:Landroid/util/LongSparseArray;

.field isNewException:Z

.field items:Ljava/util/ArrayList;

.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field savePhotosRow:I

.field saveVideosRow:I

.field type:I

.field videoDividerRow:I


# direct methods
.method public static synthetic $r8$lambda$26Gp8FOiuBkh0xqeKlQ7jGJoj8c(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$5(Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$580J7dlhp5SFom9SNIIQLhlO9ag(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5bjMA144M3_oGt3EySnwAUdwgHA(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B13ra5apzhUEDJrvUclVCxAJ170(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bx9Osi1aHSjOKQONLxyFqIZowH0(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$4(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2aRtxRteACmogk5F7nsPOjAA3g(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$0(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yXF8xyfHohRhDtsdtUoWWyPWhUo(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->lambda$createView$2(Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_ADD_EXCEPTION:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_CHAT:I

    const/4 p1, 0x3

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_DIVIDER:I

    const/4 p1, 0x4

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_DELETE_ALL:I

    const/4 p1, 0x5

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_HEADER:I

    const/4 p1, 0x6

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_TOGGLE:I

    const/4 p1, 0x7

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_DIVIDER_INFO:I

    const/16 p1, 0x8

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_CHOOSER:I

    const/16 p1, 0xa

    iput p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->VIEW_TYPE_DIVIDER_LAST:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/SaveToGallerySettingsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SaveToGallerySettingsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->onSettingsUpdated()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/SaveToGallerySettingsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p2, p2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    const-string p4, "dialog_id"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    const-string p3, "type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return p1
.end method

.method private synthetic lambda$createView$1()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    iget-object v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/UserConfig;->updateSaveGalleryExceptions(ILandroid/util/LongSparseArray;)V

    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->updateRows()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;IFF)V
    .locals 7

    iget p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->savePhotosRow:I

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object p1

    iget-boolean p2, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    xor-int/2addr p2, p3

    iput-boolean p2, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->onSettingsUpdated()V

    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->updateRows()V

    goto/16 :goto_4

    :cond_0
    iget p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->saveVideosRow:I

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object p1

    iget-boolean p2, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    xor-int/2addr p2, p3

    iput-boolean p2, p1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 p4, 0x2

    const/4 v0, 0x4

    if-ne p1, p3, :cond_4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "onlySelect"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "checkCanWrite"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    const-string v1, "dialogsType"

    if-ne p2, p4, :cond_2

    const/4 p2, 0x6

    :goto_1
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    if-ne p2, v0, :cond_3

    const/4 p2, 0x5

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    const-string p2, "allowGlobalSearch"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    :goto_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, p4, :cond_5

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object p2, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iget-wide p2, p2, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    const-string p4, "dialog_id"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    const-string p3, "type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionAlert:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    :cond_6
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object p2, p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iget-wide p2, p2, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    const-string v0, "dialog_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    const-string p3, "type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/UserConfig;->getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;

    move-result-object p1

    iget-wide p2, p2, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/UserConfig;->updateSaveGalleryExceptions(ILandroid/util/LongSparseArray;)V

    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->updateRows()V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;IFF)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object v0, v0, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;->exception:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_customize:I

    sget v4, Lorg/telegram/messenger/R$string;->EditException:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v6, Lorg/telegram/messenger/R$string;->DeleteException:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {p0, v1, p1, p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimplePopup(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Landroid/view/View;FF)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    new-instance p3, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;I)V

    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->isNewException:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/UserConfig;->getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iget-wide v1, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/UserConfig;->updateSaveGalleryExceptions(ILandroid/util/LongSparseArray;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private onSettingsUpdated()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->isNewException:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iget-wide v2, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/UserConfig;->updateSaveGalleryExceptions(ILandroid/util/LongSparseArray;)V

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-static {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->saveSettings(I)V

    return-void
.end method

.method private updateRows()V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->adapter:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    const/4 v5, 0x3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    const/16 v7, 0x9

    invoke-direct {v6, p0, v7, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    invoke-direct {v6, p0, v5, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    sget v7, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-direct {v6, p0, v8, v7, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILjava/lang/String;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->savePhotosRow:I

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    const/4 v7, 0x6

    invoke-direct {v6, p0, v7, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->saveVideosRow:I

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    invoke-direct {v6, p0, v7, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryHintCurrent:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    iget v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    if-ne v4, v2, :cond_4

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryHintUser:I

    goto :goto_2

    :cond_4
    if-ne v4, v7, :cond_5

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryHintChannels:I

    goto :goto_2

    :cond_5
    if-ne v4, v6, :cond_6

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryHintGroup:I

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    const/4 v11, 0x7

    invoke-direct {v10, p0, v11, v4, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILjava/lang/String;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    sget v10, Lorg/telegram/messenger/R$string;->MaxVideoSize:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p0, v8, v10, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILjava/lang/String;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    const/16 v9, 0x8

    invoke-direct {v8, p0, v9, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->videoDividerRow:I

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    invoke-direct {v8, p0, v11, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v4, -0x1

    iput v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->videoDividerRow:I

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget v8, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/UserConfig;->getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    invoke-direct {v8, p0, v2, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    iget-object v9, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    invoke-direct {v8, p0, v6, v9, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    invoke-direct {v2, p0, v5, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    invoke-direct {v2, p0, v7, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;

    const/16 v4, 0xa

    invoke-direct {v2, p0, v4, v3}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Item;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;ILorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->adapter:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$1;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->isNewException:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->NotificationsNewException:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryException:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryPrivate:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SaveToGalleryChannels:I

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v4, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;Lorg/telegram/ui/SaveToGallerySettingsActivity$1;)V

    iput-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->adapter:Lorg/telegram/ui/SaveToGallerySettingsActivity$Adapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-eqz p1, :cond_5

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v4, v2, [F

    const/high16 v5, 0x41000000    # 8.0f

    aput v5, v4, v3

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->isNewException:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/R$string;->AddException:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->SaveException:I

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x2

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x50

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->updateRows()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method getSettings()Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-static {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->getSettings(I)Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v0

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->exceptionsDialogs:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iput-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->isNewException:Z

    new-instance v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    invoke-direct {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iget v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->type:I

    invoke-static {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->getSettings(I)Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogException:Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    iget-boolean v2, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    iget-boolean v2, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    iget-wide v2, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    iput-wide v2, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    iget-wide v2, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity;->dialogId:J

    iput-wide v2, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    invoke-direct {p0}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->updateRows()V

    return-void
.end method
