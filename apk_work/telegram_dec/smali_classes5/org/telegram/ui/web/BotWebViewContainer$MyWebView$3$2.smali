.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

.field final synthetic val$newWebView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$QCjlnk0Yg8dlW92YwSJKM0QNC8Y(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->lambda$onRenderProcessGone$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEI1xwC6-nHFl4rQv7iAI75gJM4(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->lambda$onRenderProcessGone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->val$newWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.webview"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRenderProcessGone$1(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newWebView.onRenderProcessGone priority="

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
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "newWebView.onRenderProcessGone"

    goto :goto_2

    :goto_3
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    return p2

    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object v2, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object v2, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

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

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;)V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;)V

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

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->this$1:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$1700(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->access$2200(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/net/Uri;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;->val$newWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
