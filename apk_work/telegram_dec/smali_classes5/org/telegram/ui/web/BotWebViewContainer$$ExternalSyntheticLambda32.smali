.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/BotWebViewContainer;

.field public final synthetic f$1:Landroidx/core/util/Consumer;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;->f$1:Landroidx/core/util/Consumer;

    iput-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;->f$1:Landroidx/core/util/Consumer;

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->$r8$lambda$aFkDSwMwgQ_RobZbXw-IMBrGsZQ(Lorg/telegram/ui/web/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    return-void
.end method
