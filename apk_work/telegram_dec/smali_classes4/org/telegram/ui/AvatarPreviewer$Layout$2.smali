.class Lorg/telegram/ui/AvatarPreviewer$Layout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AvatarPreviewer$Layout;->setShowing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

.field final synthetic val$showing:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$2;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    iput-boolean p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$2;->val$showing:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$2;->val$showing:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$2;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout$2;->this$0:Lorg/telegram/ui/AvatarPreviewer$Layout;

    invoke-virtual {p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->onHideFinish()V

    :cond_0
    return-void
.end method
