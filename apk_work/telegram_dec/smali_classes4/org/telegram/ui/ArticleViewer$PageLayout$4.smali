.class Lorg/telegram/ui/ArticleViewer$PageLayout$4;
.super Lorg/telegram/ui/web/BotWebViewContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$PageLayout;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZLorg/telegram/ui/ArticleViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object p6, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/web/BotWebViewContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    return-void
.end method


# virtual methods
.method protected onErrorShown(ZILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->createErrorContainer()Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, p2, p3}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->set(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p3, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const v2, 0x3f389375    # 0.721f

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p3, p2, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p3, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p3, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-static {p2, p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->access$21802(Lorg/telegram/ui/ArticleViewer$PageLayout;Z)Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p3, p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onFaviconChanged(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->updateTitle(Z)V

    return-void
.end method

.method protected onURLChanged(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->backButton:Z

    xor-int/lit8 p2, p3, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->forwardButton:Z

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->updateTitle(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p3, p2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object p3, p3, v1

    if-ne p1, p3, :cond_7

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->access$4300(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->access$6500(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->isFirstArticle()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/WebActionBar;->setBackButtonCached(Z)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->forwardButtonDrawable:Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->setState(Z)V

    goto :goto_6

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-boolean p3, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->backButton:Z

    if-nez p3, :cond_3

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-boolean p3, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->backButton:Z

    if-nez p3, :cond_5

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p2, 0x1

    :goto_5
    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/WebActionBar;->setBackButtonCached(Z)V

    goto :goto_0

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-boolean p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->forwardButton:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/WebActionBar;->setHasForward(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p2, p2, v1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->isTonsite()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/WebActionBar;->setIsTonsite(Z)V

    :cond_7
    return-void
.end method

.method public onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public setPageLoaded(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->currentInstantLoader:Lorg/telegram/ui/web/WebInstantView$Loader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebInstantView$Loader;->getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$4;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->currentInstantLoader:Lorg/telegram/ui/web/WebInstantView$Loader;

    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/WebInstantView$Loader;->retryLocal(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;Z)V

    return-void
.end method
