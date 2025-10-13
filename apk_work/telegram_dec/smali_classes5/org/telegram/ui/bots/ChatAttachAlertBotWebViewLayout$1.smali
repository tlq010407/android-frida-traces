.class Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;
.super Lorg/telegram/ui/web/BotWebViewContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/web/BotWebViewContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->access$000(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->access$002(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->access$100(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->restoreButtonData()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;->this$0:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->access$200(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method
