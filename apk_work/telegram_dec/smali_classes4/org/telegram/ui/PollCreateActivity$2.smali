.class Lorg/telegram/ui/PollCreateActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PollCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PollCreateActivity;


# direct methods
.method public static synthetic $r8$lambda$ZJOHma9s4VT5nqaAO4ZrUh4bKUk(Lorg/telegram/ui/PollCreateActivity$2;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PollCreateActivity$2;->lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$lSwcGB6UrwKR6xBHgVwaLuSVgNk(Lorg/telegram/ui/PollCreateActivity$2;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PollCreateActivity$2;->lambda$onItemClick$0(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ZI)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PollCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;ZI)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->access$2000(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZI)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->access$2000(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1000(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_d

    :cond_0
    if-ne p1, v1, :cond_1b

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1100(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1200(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1300(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    aget-object v2, v2, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_1
    add-int/2addr v4, v1

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TodoList;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TodoList;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->access$1400(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_append:Z

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->access$1500(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_complete:Z

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1600(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1600(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v4

    array-length v4, v4

    if-ge p1, v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1600(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr p1, v1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-ge p1, v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v4, v5, v0

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1800(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v4

    aget-object v5, v5, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v9, v10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v9, v10

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_6
    add-int/2addr v7, v1

    goto :goto_4

    :cond_7
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TodoItem;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TodoItem;-><init>()V

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1600(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1600(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v4

    array-length v4, v4

    if-ge p1, v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1600(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v4

    aget v4, v4, p1

    iput v4, v6, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    goto :goto_5

    :cond_8
    add-int/2addr v2, v1

    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    :goto_5
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/2addr p1, v1

    goto/16 :goto_3

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PollCreateActivity$2;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_d

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$2000(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

    move-result-object p1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {p1, v3, v2, v1, v0}, Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$2100(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$2200(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->access$2300(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->access$2300(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_c

    add-int/2addr p1, v1

    :cond_c
    add-int/2addr v0, v1

    goto :goto_8

    :cond_d
    if-gtz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$2400(Lorg/telegram/ui/PollCreateActivity;)V

    :cond_e
    return-void

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1200(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$2500(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    aget-object v2, v2, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_11

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_10

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_10
    add-int/2addr v4, v1

    goto :goto_9

    :cond_11
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_poll;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_poll;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->access$2600(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->access$2100(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->access$2700(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    xor-int/2addr v5, v1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->access$2800(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    invoke-direct {p1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_17

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_c

    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v4, v5, v0

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$2900(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v4

    aget-object v5, v5, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v6, :cond_14

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v9, v10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_13

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v9, v10

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_13
    add-int/2addr v7, v1

    goto :goto_b

    :cond_14
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;-><init>()V

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    new-array v4, v1, [B

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$2600(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$2100(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->access$2300(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_16

    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    aget-byte v4, v4, v0

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/SerializedData;->writeByte(B)V

    :cond_16
    :goto_c
    add-int/2addr v2, v1

    goto/16 :goto_a

    :cond_17
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v4, "answers"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pollResults;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pollResults;-><init>()V

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$3000(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$3100(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    :cond_18
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v4, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3, v2}, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PollCreateActivity$2;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;)V

    invoke-static {p1, v0, v1, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_d

    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->access$2000(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

    move-result-object p1

    goto/16 :goto_7

    :cond_1b
    :goto_d
    return-void
.end method
