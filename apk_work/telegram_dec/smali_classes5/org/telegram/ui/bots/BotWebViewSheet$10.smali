.class Lorg/telegram/ui/bots/BotWebViewSheet$10;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;->requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$10;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$10;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$10;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->onCheckDismissByUser()Z

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_collapse_bot:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$10;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3502(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$10;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
