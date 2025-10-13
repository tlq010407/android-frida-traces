.class Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field final synthetic val$full:Z

.field final synthetic val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$full:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$full:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->release()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;->val$viewToRemove:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setVisibility(I)V

    return-void
.end method
