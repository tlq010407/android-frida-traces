.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->sleepAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$6;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$6;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$000(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->scheduleIdleAnimation(J)V

    return-void
.end method
