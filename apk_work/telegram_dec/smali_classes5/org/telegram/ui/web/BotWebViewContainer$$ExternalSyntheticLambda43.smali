.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;->f$0:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;->f$0:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->$r8$lambda$3z8IIk95rVyfaE8F6nllRvdy2pk(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V

    return-void
.end method
