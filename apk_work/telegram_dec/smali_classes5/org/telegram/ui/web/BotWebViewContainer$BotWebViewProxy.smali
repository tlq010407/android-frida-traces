.class public Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/BotWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotWebViewProxy"
.end annotation


# instance fields
.field public container:Lorg/telegram/ui/web/BotWebViewContainer;


# direct methods
.method public static synthetic $r8$lambda$HMKe2dSTzx71q3LX6nbnyEFmlyM(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->lambda$postEvent$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    return-void
.end method

.method private synthetic lambda$postEvent$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->access$1300(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    const-string p1, "webviewproxy.postEvent: no container"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setContainer(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    return-void
.end method
