.class Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;
.super Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

.field final synthetic val$this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    iput-object p3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;->val$this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$1700(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$1900(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$2300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$7;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$2300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    :cond_2
    return-void
.end method
