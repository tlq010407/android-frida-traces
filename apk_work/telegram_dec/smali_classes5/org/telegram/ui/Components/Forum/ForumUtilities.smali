.class public abstract Lorg/telegram/ui/Components/Forum/ForumUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;
    }
.end annotation


# static fields
.field static dialogForumDrawables:Landroid/util/SparseArray;

.field static dialogGeneralIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$4e-qg6ncDIbyd5NC7XptnRU1QEc(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->lambda$switchAllFragmentsInStackToForum$1(Lorg/telegram/ui/TopicsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvVVsxZYltUo-PSD6n9UdoutH7g(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->lambda$switchAllFragmentsInStackToForum$0(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Forum/ForumUtilities;->dialogForumDrawables:Landroid/util/SparseArray;

    return-void
.end method

.method public static applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V
    .locals 12

    iget-wide v0, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v1, v1

    iget-wide v3, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v11

    if-nez v11, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, v7}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget v1, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    invoke-virtual {p0, v0, v1, v11}, Lorg/telegram/ui/ChatActivity;->setMonoForumThreadMessages(IILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget v9, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget v10, v11, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/ChatActivity;->setThreadMessages(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v0, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v0, v0

    iget-wide v2, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->setForumLastTopicId(JJ)V

    return-void
.end method

.method public static applyTopicToMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    iget v3, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    instance-of v1, p0, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    :cond_1
    return-void
.end method

.method public static createActionTextWithTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    const-string v3, "%s"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->TopicWasCreatedAction:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;

    if-eqz v2, :cond_b

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    if-eqz v2, :cond_2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    move-object v2, v0

    goto :goto_0

    :cond_2
    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    move-object v2, p1

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_6

    iget-boolean p0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->hidden:Z

    if-eqz p0, :cond_5

    sget p0, Lorg/telegram/messenger/R$string;->TopicHidden2:I

    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    sget p0, Lorg/telegram/messenger/R$string;->TopicShown2:I

    goto :goto_2

    :goto_3
    invoke-static {v3, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_6
    and-int/lit8 v3, v2, 0x4

    const-string v5, "%1$s"

    const-string v6, "%2$s"

    if-eqz v3, :cond_8

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->closed:Z

    if-eqz v1, :cond_7

    sget v1, Lorg/telegram/messenger/R$string;->TopicWasClosedAction:I

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->TopicWasReopenedAction:I

    goto :goto_4

    :goto_5
    invoke-static {p0, v0, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v6, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_8
    and-int/lit8 p0, v2, 0x1

    if-eqz p0, :cond_9

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_9

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->icon_emoji_id:J

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/R$string;->TopicWasRenamedToAction2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v6, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz p0, :cond_a

    sget p0, Lorg/telegram/messenger/R$string;->TopicWasRenamedToAction:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    invoke-static {v6, p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_a
    and-int/lit8 p0, v2, 0x2

    if-eqz p0, :cond_b

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->icon_emoji_id:J

    iput-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/R$string;->TopicWasIconChangedToAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v6, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public static createGeneralTopicDrawable(Landroid/content/Context;FIZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FIZZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createGeneralTopicDrawable(Landroid/content/Context;FIZZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;
    .locals 7

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v6, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;-><init>(Landroid/content/Context;FIZZ)V

    return-object v6
.end method

.method public static createTopicDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 0
    if-eqz p2, :cond_0

    sget-object p2, Lorg/telegram/ui/Components/Forum/ForumUtilities;->dialogForumDrawables:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    new-instance p2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;-><init>(I)V

    sget-object v0, Lorg/telegram/ui/Components/Forum/ForumUtilities;->dialogForumDrawables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;-><init>(I)V

    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/LetterDrawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/LetterDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    new-instance p0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, p2, p1, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    return-object p0
.end method

.method public static createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static filterMessagesByTopic(JLjava/util/ArrayList;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v1

    cmp-long v4, p0, v1

    if-eqz v4, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getChatActivityForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;ILandroid/os/Bundle;)Lorg/telegram/ui/ChatActivity;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez p5, :cond_1

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v1, "chat_id"

    invoke-virtual {p5, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "message_id"

    if-eqz p4, :cond_2

    invoke-virtual {p5, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v2, :cond_3

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    iget v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    const-string v2, "unread_count"

    invoke-virtual {p5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "historyPreloaded"

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p5}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object p5, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez p5, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget v4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v6, v4

    invoke-virtual {v3, p1, p2, v6, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object v9, p1

    goto :goto_1

    :cond_4
    move-object v9, p3

    :goto_1
    if-nez p5, :cond_5

    return-object v0

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    invoke-direct {p1, p0, p5, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget v7, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/ChatActivity;->setThreadMessages(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    if-eqz p4, :cond_6

    iput p4, v1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    :cond_6
    return-object v1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static getMonoForumTitle(IJZ)Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;
    .locals 6

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->MonoforumTitle:I

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_3

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->MonoforumTitle:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Z)Ljava/lang/CharSequence;
    .locals 10

    .line 0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_b

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/16 v2, 0x21

    const-string v3, " "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_4

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez p1, :cond_0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    goto :goto_0

    :catch_0
    nop

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1, v7, v6, p3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FIZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object p3

    const/high16 v1, 0x41600000    # 14.0f

    if-nez p1, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    :goto_1
    if-nez p1, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    :goto_2
    invoke-virtual {p3, v5, v5, v6, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p2, :cond_3

    aput-object p3, p2, v5

    :cond_3
    new-instance p1, Landroid/text/style/ImageSpan;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, p1, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_4
    iget-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_6

    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    :goto_3
    const p3, 0x3f733333    # 0.95f

    invoke-direct {p2, v6, v7, p3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v0, p2, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput-boolean v4, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    const/16 p1, 0xd

    iput p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    goto :goto_4

    :cond_6
    invoke-static {p0, p3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_7

    move-object v1, p3

    check-cast v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v5

    :cond_7
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3f266666    # 0.65f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    float-to-int v1, v6

    invoke-virtual {p3, v5, v5, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    instance-of p2, p3, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz p2, :cond_8

    move-object p2, p3

    check-cast p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/LetterDrawable;

    const v1, 0x3f333333    # 0.7f

    iput v1, p2, Lorg/telegram/ui/Components/LetterDrawable;->scale:F

    :cond_8
    if-eqz p1, :cond_9

    new-instance p2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    invoke-virtual {v0, p2, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_9
    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    return-object v0

    :cond_b
    const-string p0, "DELETED"

    return-object p0
.end method

.method public static isTopicCreateMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$switchAllFragmentsInStackToForum$0(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$switchAllFragmentsInStackToForum$1(Lorg/telegram/ui/TopicsFragment;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TopicsFragment;->switchToChat(Z)V

    :cond_0
    return-void
.end method

.method public static monoForumTopicIdToTopicId(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FactCheckController$Key$$ExternalSyntheticBackport0;->m(J)I

    move-result p0

    return p0
.end method

.method public static monoForumTopicToTopic(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$savedDialog;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_monoForumDialog;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_monoForumDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->monoForumTopicToTopic(Lorg/telegram/tgnet/TLRPC$TL_monoForumDialog;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static monoForumTopicToTopic(Lorg/telegram/tgnet/TLRPC$TL_monoForumDialog;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->monoForumTopicIdToTopicId(J)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->top_message:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->read_inbox_max_id:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->read_outbox_max_id:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->unread_reactions_count:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->unread_count:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$savedDialog;->nopaid_messages_exception:Z

    iput-boolean p0, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->nopaid_messages_exception:Z

    return-object v2
.end method

.method public static openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getChatActivityForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;ILandroid/os/Bundle;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static setMonoForumAvatar(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p3, v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setMonoForumAvatar(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 3

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p3, v0, p2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void
.end method

.method public static setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 0
    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const/high16 p4, 0x3f400000    # 0.75f

    invoke-static {p1, p4, p2, v2, p3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FIZZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_1
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_5

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_6

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p3, :cond_3

    const/16 p3, 0xb

    goto :goto_1

    :cond_3
    const/16 p3, 0xa

    :goto_1
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-direct {v0, p3, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    if-eqz p2, :cond_4

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static switchAllFragmentsInStackToForum(JLorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 6

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    cmp-long v5, v3, p0

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    :cond_1
    :goto_0
    instance-of v0, p2, Lorg/telegram/ui/TopicsFragment;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    cmp-long v0, v3, p0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lorg/telegram/ui/TopicsFragment;->switchToChat(Z)V

    :cond_3
    :goto_1
    return-void
.end method
