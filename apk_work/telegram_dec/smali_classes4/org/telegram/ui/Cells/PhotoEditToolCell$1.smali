.class Lorg/telegram/ui/Cells/PhotoEditToolCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/PhotoEditToolCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoEditToolCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$000(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$102(Lorg/telegram/ui/Cells/PhotoEditToolCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$000(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$200(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;

    move-result-object v4

    new-array v5, v3, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;-><init>(Lorg/telegram/ui/Cells/PhotoEditToolCell$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
