.class Lorg/telegram/ui/Components/Paint/Input$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Input;->process(Landroid/view/MotionEvent;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Input;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Input;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input$2;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input$2;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Input;->access$100(Lorg/telegram/ui/Components/Paint/Input;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input$2;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Input;->access$100(Lorg/telegram/ui/Components/Paint/Input;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/Paint/Painting;->commitPath(Lorg/telegram/ui/Components/Paint/Path;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input$2;->this$0:Lorg/telegram/ui/Components/Paint/Input;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/Paint/Input;->access$202(Lorg/telegram/ui/Components/Paint/Input;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
