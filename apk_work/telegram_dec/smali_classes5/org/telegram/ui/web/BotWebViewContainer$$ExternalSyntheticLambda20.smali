.class public final synthetic Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/BotWebViewContainer;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->$r8$lambda$AsABeBJumnNerCtssxj_I0CvwJk(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V

    return-void
.end method
