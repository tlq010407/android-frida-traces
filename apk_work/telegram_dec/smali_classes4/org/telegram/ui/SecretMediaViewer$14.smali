.class Lorg/telegram/ui/SecretMediaViewer$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$14;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$14;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->access$3700(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$14;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->access$3700(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$14;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SecretMediaViewer;->access$3702(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
