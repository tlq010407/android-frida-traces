.class Lorg/telegram/ui/EditWidgetActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/EditWidgetActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/EditWidgetActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/EditWidgetActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$900(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$1000(Lorg/telegram/ui/EditWidgetActivity;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v2}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v2}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v2}, Lorg/telegram/ui/EditWidgetActivity;->access$1100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/MessagesStorage;->putWidgetDialogs(ILjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "shortcut_widget"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$1100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$1200(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$1100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$500(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$1100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/ChatsWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v1}, Lorg/telegram/ui/EditWidgetActivity;->access$1100(Lorg/telegram/ui/EditWidgetActivity;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/ContactsWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$900(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$900(Lorg/telegram/ui/EditWidgetActivity;)Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {v0}, Lorg/telegram/ui/EditWidgetActivity;->access$600(Lorg/telegram/ui/EditWidgetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/ui/EditWidgetActivity$EditWidgetActivityDelegate;->didSelectDialogs(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$1;->this$0:Lorg/telegram/ui/EditWidgetActivity;

    invoke-static {p1}, Lorg/telegram/ui/EditWidgetActivity;->access$1000(Lorg/telegram/ui/EditWidgetActivity;)V

    :cond_6
    :goto_2
    return-void
.end method
