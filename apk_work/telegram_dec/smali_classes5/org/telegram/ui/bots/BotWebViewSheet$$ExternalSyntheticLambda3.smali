.class public final synthetic Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/bots/BotWebViewSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->$r8$lambda$fBKGo6Od6UNrJAoe2nza7cBwQ4Y(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method
