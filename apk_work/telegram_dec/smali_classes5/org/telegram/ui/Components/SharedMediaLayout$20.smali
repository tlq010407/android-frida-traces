.class Lorg/telegram/ui/Components/SharedMediaLayout$20;
.super Lorg/telegram/ui/ChatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstCreateView:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$pos:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->firstCreateView:Z

    return-void
.end method


# virtual methods
.method public onTransitionAnimationStart(ZZ)V
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->firstCreateView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity;->openSearchWithText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->access$12700(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->access$12800(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/SearchTagsList;->setChosen(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->access$12800(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->access$12700(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v0

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v0

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->val$pos:I

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->access$12900(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)I

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->access$13000(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MediaDataController;->portSavedSearchResults(ILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$20;->firstCreateView:Z

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ChatActivity;->onTransitionAnimationStart(ZZ)V

    return-void
.end method
