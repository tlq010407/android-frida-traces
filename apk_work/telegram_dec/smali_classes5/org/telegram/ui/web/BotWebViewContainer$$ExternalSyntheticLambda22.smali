.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/BotWebViewContainer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$3:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;->f$3:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer;->$r8$lambda$dqCKWSoB4prWel2rx5OrnqEppjA(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
