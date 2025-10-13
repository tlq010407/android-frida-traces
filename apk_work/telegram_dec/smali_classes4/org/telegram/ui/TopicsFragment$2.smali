.class Lorg/telegram/ui/TopicsFragment$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$1IbtibxGg361Q3tcogayJrGYI6U(Lorg/telegram/ui/TopicsFragment$2;JLjava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment$2;->lambda$onItemClick$2(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1OkCq9MtFhXJWecrxhBTGxZpKV8()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/TopicsFragment$2;->lambda$onItemClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$9GgGXZ13Gn88oVaK9gZJ-ot8XjQ(Lorg/telegram/ui/TopicCreateFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/TopicsFragment$2;->lambda$onItemClick$3(Lorg/telegram/ui/TopicCreateFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZ1AmcvX6GM3GWSuG8oFUyNlZH4(Lorg/telegram/ui/TopicsFragment$2;Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$2;->lambda$onItemClick$4(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$W9AZuw9G8Xt_g04gluVKdQ9ETUM(Lorg/telegram/ui/TopicsFragment$2;Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;[IILjava/util/ArrayList;JLorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/TopicsFragment$2;->lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;[IILjava/util/ArrayList;JLorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fWRX82otMUBIOH7tU5PyUaHnOqA(Lorg/telegram/ui/TopicsFragment$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$2;->lambda$onItemClick$5()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onItemClick$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;[IILjava/util/ArrayList;JLorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;)V
    .locals 1

    if-eqz p7, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;->missing_invitees:Ljava/util/ArrayList;

    iget-object p7, p7, Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;->missing_invitees:Ljava/util/ArrayList;

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p7, 0x0

    aget v0, p2, p7

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p7

    if-ne v0, p3, :cond_2

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;->missing_invitees:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersAddedBulletin(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p3}, Lorg/telegram/ui/TopicsFragment;->access$2900(Lorg/telegram/ui/TopicsFragment;)I

    move-result p3

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->checkRestrictedInviteUsers(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onItemClick$2(JLjava/util/ArrayList;I)V
    .locals 25

    move-object/from16 v8, p0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v0, 0x1

    new-array v10, v0, [I

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_0

    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v8, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v15, v8, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v22, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda4;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda4;-><init>()V

    new-instance v24, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move v4, v9

    move-object/from16 v5, p3

    move-wide/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TopicsFragment$2;Lorg/telegram/tgnet/TLRPC$TL_messages_invitedUsers;[IILjava/util/ArrayList;J)V

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v19, 0x0

    move-object v0, v15

    move-wide/from16 v15, p1

    move/from16 v18, p4

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v24}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;Lorg/telegram/messenger/Utilities$Callback;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onItemClick$3(Lorg/telegram/ui/TopicCreateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/TopicCreateFragment;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$onItemClick$4(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/4 p1, 0x3

    aput-object p2, v4, p1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$5()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1200(Lorg/telegram/ui/TopicsFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 25

    move-object/from16 v11, p0

    move/from16 v12, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v12, v2, :cond_1

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1200(Lorg/telegram/ui/TopicsFragment;)V

    return-void

    :cond_0
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    const/4 v2, 0x0

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ReportBottomSheet;->openChat(Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    goto/16 :goto_c

    :pswitch_1
    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v3, v3, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/telegram/ui/BoostsActivity;

    iget-object v1, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/BoostsActivity;-><init>(J)V

    iget-object v1, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$1500(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/BoostsActivity;->setBoostsStatus(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    iget-object v1, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    :cond_2
    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->openBoostForUsersDialog:I

    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v4, v4, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object v5, v4, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_3

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v6, v1, :cond_3

    move-object v2, v5

    goto :goto_1

    :cond_3
    add-int/2addr v3, v1

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_1
    if-nez v2, :cond_6

    :goto_2
    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v3, :cond_5

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v3, v1, :cond_5

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    goto :goto_3

    :cond_5
    add-int/2addr v0, v1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v2, :cond_d

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v0

    if-gtz v0, :cond_7

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0, v1}, Lorg/telegram/ui/TopicsFragment;->access$1802(Lorg/telegram/ui/TopicsFragment;Z)Z

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lorg/telegram/ui/TopicsFragment;->access$1902(Lorg/telegram/ui/TopicsFragment;I)I

    :cond_7
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v5, v3, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    invoke-virtual {v0, v5, v6, v1, v3}, Lorg/telegram/messenger/TopicsController;->toggleShowTopic(JIZ)V

    if-eqz v4, :cond_8

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0, v4}, Lorg/telegram/ui/TopicsFragment;->access$2002(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)Landroid/view/View;

    :cond_8
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    xor-int/2addr v2, v1

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->access$2100(Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;ZLorg/telegram/ui/Cells/DialogCell;)V

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->access$2200(Lorg/telegram/ui/TopicsFragment;ZZ)V

    if-eqz v4, :cond_d

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->access$2300(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setTopicIcon(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    goto/16 :goto_a

    :pswitch_3
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v9, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v9, v11, v4}, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$2;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v10, v0, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_c

    :pswitch_4
    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2, v1}, Lorg/telegram/ui/TopicsFragment;->access$2502(Lorg/telegram/ui/TopicsFragment;Z)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$2600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v5, v5, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x9

    if-ne v12, v8, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    add-int/2addr v3, v1

    goto :goto_4

    :pswitch_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$2600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v5, v5, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v6, v6, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v6, v6

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v8, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->markMentionsAsRead(JJ)V

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v5, v5, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v14, v5

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_a

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v18, v6

    goto :goto_7

    :cond_a
    const/16 v18, 0x0

    :goto_7
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v6, v6

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move/from16 v16, v5

    move-wide/from16 v20, v6

    invoke-virtual/range {v13 .. v24}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZJIZI)V

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    iget-object v5, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v14, v5, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v5, v5

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    const/16 v20, 0x1

    move-wide/from16 v16, v5

    move/from16 v18, v4

    invoke-virtual/range {v13 .. v20}, Lorg/telegram/messenger/MessagesStorage;->updateRepliesMaxReadId(JJIIZ)V

    :cond_b
    add-int/2addr v3, v1

    goto :goto_6

    :pswitch_6
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v11}, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment$2;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment;->access$1600(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/lang/Runnable;)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->access$2800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v4, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    int-to-long v6, v1

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->access$2700(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    goto :goto_8

    :pswitch_8
    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2, v1}, Lorg/telegram/ui/TopicsFragment;->access$2402(Lorg/telegram/ui/TopicsFragment;Z)Z

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2, v1}, Lorg/telegram/ui/TopicsFragment;->access$2502(Lorg/telegram/ui/TopicsFragment;Z)Z

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->access$2600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v4, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v2, 0x4

    if-ne v12, v2, :cond_c

    const/4 v7, 0x1

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    :goto_9
    iget-object v8, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/TopicsController;->pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_d
    :goto_a
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1200(Lorg/telegram/ui/TopicsFragment;)V

    goto/16 :goto_c

    :pswitch_9
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v0, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/TopicCreateFragment;->create(JJ)Lorg/telegram/ui/TopicCreateFragment;

    move-result-object v0

    iget-object v1, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    new-instance v1, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicCreateFragment;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_c

    :pswitch_a
    iget-object v3, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v4, v4, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v4, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_e

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    :cond_e
    if-eqz v3, :cond_10

    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_f

    :goto_b
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v4, v5, v6, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/2addr v0, v1

    goto :goto_b

    :cond_f
    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    new-instance v15, Lorg/telegram/ui/TopicsFragment$2$1;

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->val$context:Landroid/content/Context;

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1400(Lorg/telegram/ui/TopicsFragment;)I

    move-result v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object v8, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v9, v8, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, v15

    move-object/from16 v1, p0

    move v3, v5

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v13

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/TopicsFragment$2$1;-><init>(Lorg/telegram/ui/TopicsFragment$2;Landroid/content/Context;ILandroidx/collection/LongSparseArray;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;J)V

    new-instance v0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11, v13, v14}, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicsFragment$2;J)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/InviteMembersBottomSheet;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;)V

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_c

    :pswitch_b
    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/TopicsController;->toggleViewForumAsMessages(JZ)V

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0, v1}, Lorg/telegram/ui/TopicsFragment;->access$1302(Lorg/telegram/ui/TopicsFragment;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v2, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    iget-object v0, v11, Lorg/telegram/ui/TopicsFragment$2;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_10
    :goto_c
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
