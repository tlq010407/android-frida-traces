.class public Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/BotWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewProxy"
.end annotation


# instance fields
.field public container:Lorg/telegram/ui/web/BotWebViewContainer;

.field public final webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public static synthetic $r8$lambda$APyhynYErYBJpKLMeSHYDgulq6U(Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->lambda$resolveShare$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cZosmsiCezdrN2yNaOmmXcNbL_U(Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->lambda$resolveShare$2(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$izaxDMTqIorN4Fh2b2aD0_i02JA(Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->lambda$post$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    return-void
.end method

.method private synthetic lambda$post$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->access$1400(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$resolveShare$1(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.navigator.__share__receive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "\'abort\'"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$resolveShare$2(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->access$1000(Lorg/telegram/ui/web/BotWebViewContainer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    const-string v4, "window.navigator.__share__receive(\"security\")"

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->access$1002(Lorg/telegram/ui/web/BotWebViewContainer;J)J

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    instance-of v0, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_a

    :cond_3
    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "text"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v4, "title"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_2
    move-exception v2

    move-object p1, v0

    move-object v3, p1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "\n"

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    if-eqz p2, :cond_10

    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    if-nez p4, :cond_a

    :try_start_4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :catch_4
    move-exception p2

    goto :goto_5

    :cond_a
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    if-eqz p3, :cond_b

    const-string p2, "android.intent.extra.TITLE"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 p3, 0x18

    const-string p4, "android.intent.extra.STREAM"

    if-lt p2, p3, :cond_c

    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".provider"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    :cond_c
    :try_start_6
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :goto_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_d
    :goto_6
    new-instance v0, Ljava/io/File;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_e

    const-string v6, "file"

    goto :goto_7

    :cond_e
    move-object v6, p3

    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->fixFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v3, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_f
    const-string v6, ""

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_9
    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;)V

    invoke-virtual {v1, p2}, Lorg/telegram/ui/LaunchActivity;->whenWebviewShareAPIDone(Lorg/telegram/messenger/Utilities$Callback;)V

    sget p2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x209

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_11
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resolveShare(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContainer(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    return-void
.end method
