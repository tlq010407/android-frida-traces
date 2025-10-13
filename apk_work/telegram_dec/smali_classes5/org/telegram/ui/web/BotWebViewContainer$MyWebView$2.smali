.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstRequest:Z

.field private final resetErrorRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field final synthetic val$bot:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$5bZiH0Us0c937ByQMUNfYNkZj_A(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$shouldInterceptRequest$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sKvG_VjLlS0lC-VI6LGy33jmB6w(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$onRenderProcessGone$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tHLf8mLy7D2CauvgcHFlSSbL418(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$wx7-Om1Yqu_GW5HkQzqjc5yhQc4(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->lambda$onRenderProcessGone$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    iput-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$3()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.webview"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$2(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shouldInterceptRequest$0()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-direct {v1}, Lorg/telegram/ui/web/BrowserHistory$Entry;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1902(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BrowserHistory$Entry;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->id:J

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->magic2tonsite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->from(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1900(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BrowserHistory;->pushHistory(Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateVisitedHistory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1800(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1800(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1802(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageCommitVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const-string v1, "$DEBUG$"

    const-string v2, ""

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    sget v3, Lorg/telegram/messenger/R$raw;->webview_ext:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    sget v1, Lorg/telegram/messenger/R$raw;->webview_share:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    sget v3, Lorg/telegram/messenger/R$raw;->webview_app_ext:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$202(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1800(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1800(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1802(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v2, "onPageFinished"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "onPageFinished: no container"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const-string p2, "$DEBUG$"

    const-string v1, ""

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    sget v2, Lorg/telegram/messenger/R$raw;->webview_ext:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    sget p2, Lorg/telegram/messenger/R$raw;->webview_share:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    sget v2, Lorg/telegram/messenger/R$raw;->webview_app_ext:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$400(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v1, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v1, :cond_3

    iget-object p2, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1600(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1600(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1602(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1902(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BrowserHistory$Entry;)Lorg/telegram/ui/web/BrowserHistory$Entry;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2302(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageStarted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    if-eqz v3, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x28

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v4, v3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v4, p2

    :goto_0
    invoke-virtual {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    xor-int/2addr v1, v5

    invoke-virtual {v0, v4, v3, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v2, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->injectedJS:Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onTitleChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    invoke-virtual {v0, v2, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline5;->m(Landroid/webkit/WebResourceError;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline6;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    iput-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onTitleChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline5;->m(Landroid/webkit/WebResourceError;)I

    move-result v2

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline6;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline6;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError: statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceResponse;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->resetErrorRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    iput-boolean v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    if-eqz p2, :cond_4

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    :goto_3
    iput-object p2, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShownAt:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onTitleChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v1, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceResponse;)I

    move-result p2

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline2;->m(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onErrorShown(ZILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError: error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderProcessGone priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline3;->m(Landroid/webkit/RenderProcessGoneDetail;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " didCrash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticApiModelOutline4;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "onRenderProcessGone"

    goto :goto_2

    :goto_3
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    return p2

    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->access$900(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    :goto_4
    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ChromeCrashMessage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 11

    .line 0
    const-string v0, "; "

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldInterceptRequest "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-nez p2, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "proxying ton"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iput-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer;->proxyTON(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v1, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    if-eqz v1, :cond_c

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v1

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, ", "

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v7, v7, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-nez v7, :cond_3

    const-string v7, "cross-origin-resource-policy"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "cross-origin-embedder-policy"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    const-string v8, "unsafe-none"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "same-site"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<!> dangerous header CORS policy: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-boolean v5, v4, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    aget-object v2, v0, v3

    :cond_9
    :goto_4
    array-length v6, v0

    if-ge v5, v6, :cond_b

    aget-object v6, v0, v5

    const-string v7, "charset="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget-object v4, v0, v5

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    move-object v5, v2

    move-object v6, v4

    iput-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->firstRequest:Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "proxying ton"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    const-string p1, "GET"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->proxyTON(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v0, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onInstantClose()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2100(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2100(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2102(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    const-string v4, "shouldOverrideUrlLoading("

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$context:Landroid/content/Context;

    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/browser/Browser;->openInExternalApp(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = true (openInExternalBrowser)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$200(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onInstantClose()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2100(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2100(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2102(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_6
    :goto_1
    return v2

    :cond_7
    const-string v3, "intent://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "browser_fallback_url"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "https"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "http"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tonsite"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = true (browser open)"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return v2

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->val$bot:Z

    if-nez v3, :cond_b

    const-string v3, "embed"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v5, "t.me"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return p1

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$700(Lorg/telegram/ui/web/BotWebViewContainer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$700(Lorg/telegram/ui/web/BotWebViewContainer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v3, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v3, :cond_e

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onInstantClose()V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2100(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2100(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2102(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_d
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2200(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/net/Uri;)V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = true"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return v2

    :cond_10
    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$2302(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;)Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") = false"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return p1
.end method
