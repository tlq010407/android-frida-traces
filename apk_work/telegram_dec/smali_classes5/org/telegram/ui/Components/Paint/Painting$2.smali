.class Lorg/telegram/ui/Components/Paint/Painting$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting;->applyHelperShape()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;


# direct methods
.method public static synthetic $r8$lambda$hGEJGcoJEtkqnGrNzN9mvQO9YpQ(Lorg/telegram/ui/Components/Paint/Painting$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting$2;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$100(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$202(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$000(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Path;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Path;

    move-result-object v3

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Painting;->access$500(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v2, v3, v0, v5}, Lorg/telegram/ui/Components/Paint/Painting;->access$600(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$700(Lorg/telegram/ui/Components/Paint/Painting;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$100(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/Paint/Painting;->access$502(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Paint/Shape;->getBounds(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Painting;->access$500(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v5, v3, v0, v6}, Lorg/telegram/ui/Components/Paint/Painting;->access$800(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v6, v5, v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;Z)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v5, v2, v4}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$800(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$102(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$1002(Lorg/telegram/ui/Components/Paint/Painting;F)F

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Painting;->access$000(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Paint/Painting$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Painting$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Painting$2;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method
