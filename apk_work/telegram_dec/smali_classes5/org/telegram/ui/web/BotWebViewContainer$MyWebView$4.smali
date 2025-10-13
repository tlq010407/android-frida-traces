.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$3102(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;I)I

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$3202(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;I)I

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    xor-int/lit8 p2, p3, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$3302(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$3400(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$4;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$3400(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
