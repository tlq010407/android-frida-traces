.class Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastLang:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->canScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->lastLang:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->lastLang:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->onSelectedTabChanged()V

    :cond_0
    return-void
.end method

.method protected onTabPageSelected(I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->lastLang:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->lastLang:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->onSelectedTabChanged()V

    :cond_0
    return-void
.end method

.method protected onTabScrollEnd(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabScrollEnd(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->getCurrentLang()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->lastLang:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->lastLang:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->onSelectedTabChanged()V

    :cond_0
    return-void
.end method
