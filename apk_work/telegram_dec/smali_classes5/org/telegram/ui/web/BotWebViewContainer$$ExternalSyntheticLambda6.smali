.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/BotWebViewContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iput p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->$r8$lambda$XMoFvfSeQhNLORKCQcQzsdVGaGY(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
