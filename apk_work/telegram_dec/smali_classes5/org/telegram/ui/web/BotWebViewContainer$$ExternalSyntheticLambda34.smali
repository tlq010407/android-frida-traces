.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/BotWebViewContainer;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->$r8$lambda$KrzJ9qpvSbgObA3t2Svq6yCoEL0(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
