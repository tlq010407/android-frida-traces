.class public Lorg/telegram/ui/LiteModeSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;,
        Lorg/telegram/ui/LiteModeSettingsActivity$Item;,
        Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;,
        Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;
    }
.end annotation


# instance fields
.field private FLAGS_CHAT:I

.field adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

.field contentView:Landroid/widget/FrameLayout;

.field private expanded:[Z

.field private items:Ljava/util/ArrayList;

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private oldItems:Ljava/util/ArrayList;

.field private onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

.field restrictBulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method public static synthetic $r8$lambda$UjYFGZuQC79daPf2ke4bOF-_PXM(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$createView$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$l44X76SvpnHr9rzdlok8DOIesmc(Lorg/telegram/ui/LiteModeSettingsActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sVuUwulOjX_0iWby-VRgUMQ2Dsg(Lorg/telegram/ui/LiteModeSettingsActivity;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$highlightRow$2(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LiteModeSettingsActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LiteModeSettingsActivity;)[Z
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateInfo()V

    return-void
.end method

.method private getExpandedIndex(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x701c

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->FLAGS_CHAT:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private highlightRow(I)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;I)V

    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;IFF)V
    .locals 3

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    iget-object p4, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p2, p4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p4, v0, :cond_2

    const/4 v2, 0x4

    if-ne p4, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    if-ne p4, p3, :cond_6

    iget p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-ne p2, v1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "view_animations"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    xor-int/2addr p4, v1

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {p4}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p4

    const/4 v2, -0x1

    if-eqz p4, :cond_3

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BatteryDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    const p4, 0x3dcccccd    # 0.1f

    const v0, 0x3fa66666    # 1.3f

    invoke-direct {p2, p4, v2, p3, v0}, Lorg/telegram/ui/Components/BatteryDrawable;-><init>(FIIF)V

    sget p3, Lorg/telegram/messenger/R$string;->LiteBatteryRestricted:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_3
    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p4, v0, :cond_5

    invoke-virtual {p2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result p4

    if-le p4, v1, :cond_5

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v0, 0x42960000    # 75.0f

    if-eqz p4, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5

    :goto_1
    iget p1, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p1

    if-eq p1, v2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean p3, p2, p1

    xor-int/2addr p3, v1

    aput-boolean p3, p2, p1

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    return-void

    :cond_5
    iget p1, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabledSetting(I)Z

    move-result p1

    iget p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    xor-int/2addr p1, v1

    invoke-static {p2, p1}, Lorg/telegram/messenger/LiteMode;->toggleFlag(IZ)V

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$highlightRow$2(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return p1
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    return-void
.end method

.method private updateInfo()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    if-gtz v3, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->LiteBatteryInfoDisabled:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->LiteBatteryInfoEnabled:I

    goto :goto_0

    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoBelow:I

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "%d%%"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateItems()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSlider()Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    if-gtz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoDisabled:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoEnabled:I

    goto :goto_0

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoBelow:I

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "%d%%"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v3, "LiteOptionsTitle"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    sget v4, Lorg/telegram/messenger/R$string;->LiteOptionsStickers:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v2, v0

    const/4 v2, 0x2

    const-string v3, "LiteOptionsAutoplayChat"

    const-string v4, "LiteOptionsAutoplayKeyboard"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg2_smile_status:I

    sget v6, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x701c

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4004

    invoke-static {v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v4, "LiteOptionsAutoplayReactions"

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2008

    invoke-static {v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1010

    invoke-static {v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_ask_question:I

    const-string v4, "LiteOptionsChat"

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->FLAGS_CHAT:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsBackground"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsTopics"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsSpoiler"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-ge v0, v1, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsBlur"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsScale"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x8000

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsThanos"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_call_earpiece:I

    const-string v3, "LiteOptionsCalls"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x200

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_videocall:I

    const-string v3, "LiteOptionsAutoplayVideo"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_gif:I

    const-string v3, "LiteOptionsAutoplayGifs"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x800

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-static {v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteSmoothTransitions"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteSmoothTransitionsInfo"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateValues()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    invoke-virtual {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->update()V

    goto :goto_2

    :cond_4
    :goto_1
    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->update(Lorg/telegram/ui/LiteModeSettingsActivity$Item;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Lorg/telegram/ui/LiteModeSettingsActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x181a0

    goto :goto_0

    :cond_0
    const p1, 0x181e0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->FLAGS_CHAT:I

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->removeOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->addOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAll()V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper(Z)V

    return-void
.end method

.method public scrollToFlags(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget v1, v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->highlightRow(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public scrollToType(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget v1, v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->highlightRow(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setExpanded(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aput-boolean p2, v0, p1

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    return-void
.end method
