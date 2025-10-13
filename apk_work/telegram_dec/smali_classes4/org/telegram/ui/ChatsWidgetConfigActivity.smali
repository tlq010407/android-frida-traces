.class public Lorg/telegram/ui/ChatsWidgetConfigActivity;
.super Lorg/telegram/ui/ExternalActionActivity;
.source "SourceFile"


# instance fields
.field private creatingAppWidgetId:I


# direct methods
.method public static synthetic $r8$lambda$IH_ijoZUobNZ39eXlP8Nn0MceNE(Lorg/telegram/ui/ChatsWidgetConfigActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatsWidgetConfigActivity;->lambda$handleIntent$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ExternalActionActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChatsWidgetConfigActivity;->creatingAppWidgetId:I

    return-void
.end method

.method private synthetic lambda$handleIntent$0(Ljava/util/ArrayList;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ChatsWidgetConfigActivity;->creatingAppWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected handleIntent(Landroid/content/Intent;ZZZII)Z
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/ExternalActionActivity;->checkPasscode(Landroid/content/Intent;ZZZII)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p4, "appWidgetId"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChatsWidgetConfigActivity;->creatingAppWidgetId:I

    :cond_1
    iget p2, p0, Lorg/telegram/ui/ChatsWidgetConfigActivity;->creatingAppWidgetId:I

    const/4 p4, 0x1

    if-eqz p2, :cond_6

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p5, "onlySelect"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p5, "dialogsType"

    const/16 p6, 0xa

    invoke-virtual {p2, p5, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p5, "allowSwitchAccount"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lorg/telegram/ui/EditWidgetActivity;

    iget p5, p0, Lorg/telegram/ui/ChatsWidgetConfigActivity;->creatingAppWidgetId:I

    invoke-direct {p2, p3, p5}, Lorg/telegram/ui/EditWidgetActivity;-><init>(II)V

    new-instance p3, Lorg/telegram/ui/ChatsWidgetConfigActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatsWidgetConfigActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatsWidgetConfigActivity;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/EditWidgetActivity;->setDelegate(Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    :goto_0
    invoke-interface {p3, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/ExternalActionActivity;->backgroundTablet:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ExternalActionActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/ExternalActionActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return p4
.end method
