.class Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;


# direct methods
.method public static synthetic $r8$lambda$HdCIalCFHnQpdI-MPc9a8pfJAUE(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->lambda$showTaggedReactionToast$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$UC3vxyU24W1FSJxXmIS48LVH-Z0(IILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->lambda$showTaggedReactionToast$0(IILorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$showTaggedReactionToast$0(IILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string p0, "user_id"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "message_id"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showTaggedReactionToast$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZII)V
    .locals 6

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2900(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)I

    move-result v2

    if-eqz p2, :cond_3

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p4, v0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2$$ExternalSyntheticLambda1;-><init>(IILorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMessagesTaggedBulletin(ILorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_2
    return-void
.end method

.method private showTaggedReactionToast(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZII)V

    const-wide/16 p1, 0x12c

    invoke-static {v6, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p2

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2700(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/messenger/support/SparseLongArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2700(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/messenger/support/SparseLongArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/SparseLongArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2700(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/messenger/support/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/support/SparseLongArray;->keyAt(I)I

    move-result v1

    new-instance v14, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    invoke-direct {v2, v1, v14, v11, v11}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v4}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendReaction(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->hideReactionsDialog()V

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->this$0:Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-static {v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    xor-int/lit8 v3, v12, 0x1

    invoke-direct {p0, v9, v2, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;->showTaggedReactionToast(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    return-void
.end method
