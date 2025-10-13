.class Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/DialogCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForumFormattedNames"
.end annotation


# instance fields
.field avatarSpans:Ljava/util/HashMap;

.field formattedNames:Ljava/lang/CharSequence;

.field isLoadingState:Z

.field lastMessageId:I

.field lastTopicMessageUnread:Z

.field private final parent:Lorg/telegram/ui/Cells/DialogCell;

.field topMessageTopicEndIndex:I

.field topMessageTopicStartIndex:I


# direct methods
.method public static synthetic $r8$lambda$uICq3jFQRNqxUSEcmTlTge6AEXo(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->parent:Lorg/telegram/ui/Cells/DialogCell;

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formatTopicsNames(ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->invalidateSpans()V

    return-void
.end method

.method private formatTopicsNames(ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastMessageId:I

    if-ne v6, v5, :cond_2

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->isLoadingState:Z

    if-nez v6, :cond_2

    return-void

    :cond_2
    const/4 v6, 0x0

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->avatarSpans:Ljava/util/HashMap;

    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->isLoadingState:Z

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastMessageId:I

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v5, v5, v4

    if-eqz v3, :cond_13

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v7

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v7}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v10, " "

    if-eqz v2, :cond_8

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1, v11, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v13

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v14, v15, v11, v12}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-static {v13, v5, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v15, v13, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez v15, :cond_3

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_4
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    :goto_5
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    if-eqz v2, :cond_7

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v13, 0x40400000    # 3.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-direct {v2, v13}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    invoke-virtual {v7, v2, v13, v14, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    const-wide/16 v11, 0x0

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_6
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/4 v13, 0x4

    if-eqz v3, :cond_a

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->avatarSpans:Ljava/util/HashMap;

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-string v5, "  "

    if-eqz v3, :cond_9

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_9
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    new-instance v3, Lorg/telegram/ui/AvatarSpan;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->parent:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {v3, v12, v1}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;I)V

    iput-boolean v4, v3, Lorg/telegram/ui/AvatarSpan;->needDrawShadow:Z

    invoke-virtual {v3, v10, v11}, Lorg/telegram/ui/AvatarSpan;->setDialogId(J)V

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->avatarSpans:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v5, 0x21

    invoke-virtual {v10, v3, v4, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_e

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v13, v3

    cmp-long v3, v13, v11

    if-nez v3, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v8, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_c
    const-string v3, ", "

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    :goto_9
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ForumTopic;

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v8, 0x0

    :goto_a
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x4

    goto :goto_8

    :cond_e
    if-lez v15, :cond_f

    new-instance v1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    invoke-direct {v1, v2, v4, v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v15, v15, 0x2

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v7, v1, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    return-void

    :cond_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->preloadTopics(J)V

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->isLoadingState:Z

    goto :goto_c

    :cond_11
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget v1, Lorg/telegram/messenger/R$string;->NoMonoforumTopicsCreated:I

    goto :goto_b

    :cond_12
    sget v1, Lorg/telegram/messenger/R$string;->NoTopicsCreated:I

    :goto_b
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    :cond_13
    :goto_c
    return-void
.end method

.method private invalidateSpans()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->avatarSpans:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->avatarSpans:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/AvatarSpan;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/AvatarSpan;->setDialogId(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$formatTopicsNames$0(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    neg-int p0, p0

    return p0
.end method
