.class public final synthetic Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->$r8$lambda$P3Cq0ROBiUHmP3euCfthM8ztW1Q(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
