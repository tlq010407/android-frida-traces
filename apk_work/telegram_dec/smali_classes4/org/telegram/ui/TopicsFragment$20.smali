.class Lorg/telegram/ui/TopicsFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field final synthetic val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;


# direct methods
.method public static synthetic $r8$lambda$RO30eoQd-DGYiCvb4QBkmIHWZCA(Lorg/telegram/ui/TopicsFragment$20;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$20;->lambda$showCustomize$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$showCustomize$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v1, p1

    const-string p1, "topic_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v2, p1, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method public muteFor(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$6100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x4

    :goto_0
    invoke-static {v0, v2, p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$6200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v4, v0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JJI)V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$20$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/TopicsFragment$20$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$20;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public toggleMute()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$6300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v4, v4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method public toggleSound()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$6000(Lorg/telegram/ui/TopicsFragment;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v3, v3, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v3, v3

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v5, v5

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

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v5, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$20;->val$topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v7, v2

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method
