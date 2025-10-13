.class Lorg/telegram/ui/bots/BotWebViewSheet$2;
.super Lorg/telegram/ui/web/BotWebViewContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/web/BotWebViewContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    return-void
.end method


# virtual methods
.method protected onErrorShown(ZILjava/lang/String;)V
    .locals 4

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->createErrorContainer()Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v2, 0x3f389375    # 0.721f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1602(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1702(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/BotSensors;->attachWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$500(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/BotFullscreenButtons;->setWebView(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1100(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    return-void
.end method

.method public onWebViewDestroyed(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/BotSensors;->detachWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$500(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->setWebView(Landroid/webkit/WebView;)V

    return-void
.end method
