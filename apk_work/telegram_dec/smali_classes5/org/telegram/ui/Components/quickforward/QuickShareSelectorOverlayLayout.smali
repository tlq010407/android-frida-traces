.class public Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final currentAccount:I

.field private final dialogs:Ljava/util/ArrayList;

.field private final drawableHashMap:Ljava/util/HashMap;

.field private final drawablesForRemove:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$TfLisoI1U3C3DWGzHII5TBGZ2KQ(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->lambda$open$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawablesForRemove:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    return-void
.end method

.method private fetchDialogs()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v1, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget v6, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v8, v6, v1

    if-nez v8, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-nez v6, :cond_a

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v6

    if-nez v6, :cond_a

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-ne v6, v7, :cond_9

    goto :goto_2

    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez v8, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v8, :cond_6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v8, :cond_8

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v8, :cond_7

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v8, :cond_8

    :cond_7
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_a

    :cond_8
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-ne v6, v7, :cond_9

    :goto_2
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static key(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$open$0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawablesForRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public close(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/Bulletin;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->key(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->close(Lorg/telegram/ui/Components/Bulletin;)V

    :cond_0
    return-void
.end method

.method public getSelectedDialogId(Lorg/telegram/ui/Cells/ChatMessageCell;)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->key(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->getSelectedDialogId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->key(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p1, p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawablesForRemove:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawablesForRemove:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawablesForRemove:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->destroy()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawablesForRemove:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchMoveEvent(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->key(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->onTouchMoveEvent(FF)V

    :cond_0
    return-void
.end method

.method public open(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 8

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->fetchDialogs()V

    invoke-static {p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->key(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    new-instance v7, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->dialogs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;Ljava/lang/String;)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/List;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->drawableHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
