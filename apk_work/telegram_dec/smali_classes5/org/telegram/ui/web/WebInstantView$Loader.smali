.class public Lorg/telegram/ui/web/WebInstantView$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebInstantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private cancelLocal:Ljava/lang/Runnable;

.field private cancelled:Z

.field private final currentAccount:I

.field public currentIsLoaded:Z

.field public currentProgress:F

.field public currentUrl:Ljava/lang/String;

.field private gotLocal:Z

.field private gotRemote:Z

.field private final listeners:Ljava/util/ArrayList;

.field private localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private reqId:I

.field private started:Z


# direct methods
.method public static synthetic $r8$lambda$OsNxbSwtWtXdMBWQJc-NXQv2S1c(Lorg/telegram/ui/web/WebInstantView$Loader;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$listen$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYaDXqpoh-U2_yiNxwr4F-7AfdU(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$start$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SpjkLf17hiKuprBBXrnClaVvkto(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/ui/web/WebInstantView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$retryLocal$0(Lorg/telegram/ui/web/WebInstantView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f16EGOwjFGaMeyNom7WZRrSDF7A(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/ui/web/WebInstantView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$start$1(Lorg/telegram/ui/web/WebInstantView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gPWPPB1bsXS4Je2i5aNmTWBgkCs(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$start$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$listen$4(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$retryLocal$0(Lorg/telegram/ui/web/WebInstantView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-direct {p0}, Lorg/telegram/ui/web/WebInstantView$Loader;->notifyUpdate()V

    return-void
.end method

.method private synthetic lambda$start$1(Lorg/telegram/ui/web/WebInstantView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-direct {p0}, Lorg/telegram/ui/web/WebInstantView$Loader;->notifyUpdate()V

    return-void
.end method

.method private synthetic lambda$start$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotRemote:Z

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    iget v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_page;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez p1, :cond_2

    iput-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_2
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/web/WebInstantView$Loader;->notifyUpdate()V

    return-void
.end method

.method private synthetic lambda$start$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyUpdate()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    iget-boolean v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotRemote:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->reqId:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotRemote:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public listen(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_0
    return-void
.end method

.method public retryLocal(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentProgress:F

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentIsLoaded:Z

    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    new-instance v1, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/web/WebInstantView;->generate(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    return-void
.end method

.method public start(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->started:Z

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentProgress:F

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentIsLoaded:Z

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/web/WebInstantView;->generate(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentUrl:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    iget v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->reqId:I

    return-void
.end method
