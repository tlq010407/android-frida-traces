.class Lorg/telegram/ui/ChatActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method public muteFor(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x4

    :goto_0
    invoke-static {v0, v2, p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JJI)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic openExceptions()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback$-CC;->$default$openExceptions(Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V

    return-void
.end method

.method public showCustomize()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v1

    const-string v3, "topic_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    return-void
.end method

.method public toggleMute()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public toggleSound()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
