.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/webkit/JsPromptResult;

.field public final synthetic f$2:Lorg/telegram/ui/Components/EditTextCaption;


# direct methods
.method public synthetic constructor <init>([ZLandroid/webkit/JsPromptResult;Lorg/telegram/ui/Components/EditTextCaption;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;->f$0:[Z

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;->f$1:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/ui/Components/EditTextCaption;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;->f$0:[Z

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;->f$1:Landroid/webkit/JsPromptResult;

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->$r8$lambda$FlsajW65O1qximWu9YktPhKFj1I([ZLandroid/webkit/JsPromptResult;Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
