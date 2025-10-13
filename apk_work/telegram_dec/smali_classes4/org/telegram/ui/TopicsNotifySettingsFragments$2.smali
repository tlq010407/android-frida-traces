.class Lorg/telegram/ui/TopicsNotifySettingsFragments$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsNotifySettingsFragments;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;


# direct methods
.method public static synthetic $r8$lambda$M7Nb6HhFphb7Ariw5puStxw6X4o(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Y3AQ8YuoBDBInKqx_BH_yra4RY(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->lambda$onItemClick$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bny6dTXjOK9S6LdP0PrfrGXMDdk(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->lambda$onItemClick$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsNotifySettingsFragments;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p2, p2, Lorg/telegram/ui/TopicsNotifySettingsFragments;->exceptionsTopics:Ljava/util/HashSet;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-static {p1}, Lorg/telegram/ui/TopicsNotifySettingsFragments;->access$200(Lorg/telegram/ui/TopicsNotifySettingsFragments;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->dialogId:J

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v1, v1

    const-string v3, "topic_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "exception"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->setDelegate(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->exceptionsTopics:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-static {v0, p2}, Lorg/telegram/ui/TopicsNotifySettingsFragments;->access$100(Lorg/telegram/ui/TopicsNotifySettingsFragments;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->exceptionsTopics:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-static {p1}, Lorg/telegram/ui/TopicsNotifySettingsFragments;->access$200(Lorg/telegram/ui/TopicsNotifySettingsFragments;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsNotifySettingsFragments$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->dialogId:J

    neg-long v1, v1

    const-string v3, "chat_id"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "for_select"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v0, p1}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->exceptionsTopics:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/TopicsFragment;->setExcludeTopics(Ljava/util/HashSet;)V

    new-instance p1, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/TopicsFragment;->setOnTopicSelectedListener(Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;)V

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsNotifySettingsFragments$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsNotifySettingsFragments$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->dialogId:J

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v1, v1

    const-string v3, "topic_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "exception"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$1;-><init>(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->setDelegate(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    iget-object p1, p1, Lorg/telegram/ui/TopicsNotifySettingsFragments;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsNotifySettingsFragments$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->this$0:Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
