.class Lorg/telegram/messenger/camera/CameraView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraView;->showTexture(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$3;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$3;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView$3;->val$show:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$3;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/camera/CameraView;->access$102(Lorg/telegram/messenger/camera/CameraView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
