.class Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;ZLorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field final synthetic val$clickedListener:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;

.field final synthetic val$offsetPadding:Z

.field final synthetic val$spoilers:Ljava/util/List;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;Landroid/view/View;ZLjava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iput-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$offsetPadding:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$spoilers:Ljava/util/List;

    iput-object p5, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$clickedListener:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr p1, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$offsetPadding:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-static {v1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$000(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-static {v1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$100(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$202(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;Z)Z

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-static {v0}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$200(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$202(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;Z)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr p1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$offsetPadding:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p1, v2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-static {v2}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$000(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-static {v2}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->access$100(Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;)I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$spoilers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$1;->val$clickedListener:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-interface {v1, v3, v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
