.class public final synthetic Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/bots/BotLocation;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/bots/BotLocation;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/bots/BotLocation;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/bots/BotLocation;->$r8$lambda$86tC1-8Cxj1Ix_h60feMuwSKkCw(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V

    return-void
.end method
