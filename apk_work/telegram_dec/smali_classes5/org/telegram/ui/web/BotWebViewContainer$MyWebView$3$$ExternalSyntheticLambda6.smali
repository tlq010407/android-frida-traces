.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/webkit/JsPromptResult;


# direct methods
.method public synthetic constructor <init>([ZLandroid/webkit/JsPromptResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;->f$0:[Z

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;->f$1:Landroid/webkit/JsPromptResult;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;->f$0:[Z

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;->f$1:Landroid/webkit/JsPromptResult;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->$r8$lambda$46yWweFpbnX7LDYh2i48Aea3vk4([ZLandroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V

    return-void
.end method
