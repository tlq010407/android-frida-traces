.class Lorg/telegram/ui/Components/TrendingStickersLayout$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;->glueToTop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dy:I

.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

.field final synthetic val$startFrom:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    iput p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->val$startFrom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->dy:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->val$startFrom:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$902(Lorg/telegram/ui/Components/TrendingStickersLayout;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$100(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->dy:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$902(Lorg/telegram/ui/Components/TrendingStickersLayout;Z)Z

    iput p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$9;->dy:I

    return-void
.end method
