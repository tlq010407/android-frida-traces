.class Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$1102(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$1202(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
