.class Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$5;
.super Landroidx/recyclerview/widget/GridLayoutManager;
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
.method constructor <init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Landroid/content/Context;ILorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$5;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    iput-object p4, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$5;->val$this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$5;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$1500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
